
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_nci_se_status {int dummy; } ;
struct nfc_phy_ops {int dummy; } ;
struct llt_ndlc {int sm_work; int ack_pending_q; int send_q; int rcv_q; int t2_timer; int t1_timer; scalar_t__ powered; struct device* dev; void* phy_id; struct nfc_phy_ops* ops; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct llt_ndlc* devm_kzalloc (struct device*,int,int ) ;
 int llt_ndlc_sm_work ;
 int ndlc_t1_timeout ;
 int ndlc_t2_timeout ;
 int skb_queue_head_init (int *) ;
 int st_nci_probe (struct llt_ndlc*,int,int,struct st_nci_se_status*) ;
 int timer_setup (int *,int ,int ) ;

int ndlc_probe(void *phy_id, struct nfc_phy_ops *phy_ops, struct device *dev,
        int phy_headroom, int phy_tailroom, struct llt_ndlc **ndlc_id,
        struct st_nci_se_status *se_status)
{
 struct llt_ndlc *ndlc;

 ndlc = devm_kzalloc(dev, sizeof(struct llt_ndlc), GFP_KERNEL);
 if (!ndlc)
  return -ENOMEM;

 ndlc->ops = phy_ops;
 ndlc->phy_id = phy_id;
 ndlc->dev = dev;
 ndlc->powered = 0;

 *ndlc_id = ndlc;


 timer_setup(&ndlc->t1_timer, ndlc_t1_timeout, 0);
 timer_setup(&ndlc->t2_timer, ndlc_t2_timeout, 0);

 skb_queue_head_init(&ndlc->rcv_q);
 skb_queue_head_init(&ndlc->send_q);
 skb_queue_head_init(&ndlc->ack_pending_q);

 INIT_WORK(&ndlc->sm_work, llt_ndlc_sm_work);

 return st_nci_probe(ndlc, phy_headroom, phy_tailroom, se_status);
}
