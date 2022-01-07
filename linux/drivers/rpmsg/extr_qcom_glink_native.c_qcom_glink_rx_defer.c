
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int rx_work; int rx_lock; int rx_queue; int dev; } ;
struct glink_msg {int dummy; } ;
struct glink_defer_cmd {int node; int msg; } ;


 size_t ALIGN (size_t,int) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int dev_dbg (int ,char*) ;
 struct glink_defer_cmd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int qcom_glink_rx_advance (struct qcom_glink*,int) ;
 int qcom_glink_rx_avail (struct qcom_glink*) ;
 int qcom_glink_rx_peak (struct qcom_glink*,int *,int ,int) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int qcom_glink_rx_defer(struct qcom_glink *glink, size_t extra)
{
 struct glink_defer_cmd *dcmd;

 extra = ALIGN(extra, 8);

 if (qcom_glink_rx_avail(glink) < sizeof(struct glink_msg) + extra) {
  dev_dbg(glink->dev, "Insufficient data in rx fifo");
  return -ENXIO;
 }

 dcmd = kzalloc(sizeof(*dcmd) + extra, GFP_ATOMIC);
 if (!dcmd)
  return -ENOMEM;

 INIT_LIST_HEAD(&dcmd->node);

 qcom_glink_rx_peak(glink, &dcmd->msg, 0, sizeof(dcmd->msg) + extra);

 spin_lock(&glink->rx_lock);
 list_add_tail(&dcmd->node, &glink->rx_queue);
 spin_unlock(&glink->rx_lock);

 schedule_work(&glink->rx_work);
 qcom_glink_rx_advance(glink, sizeof(dcmd->msg) + extra);

 return 0;
}
