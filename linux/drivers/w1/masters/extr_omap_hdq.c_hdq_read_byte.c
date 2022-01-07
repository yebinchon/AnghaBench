
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int hdq_irqstatus; int hdq_mutex; int dev; int hdq_usecount; } ;


 int EINTR ;
 int EINVAL ;
 int ETIMEDOUT ;
 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_DIR ;
 int OMAP_HDQ_CTRL_STATUS_GO ;
 int OMAP_HDQ_INT_STATUS_RXCOMPLETE ;
 int OMAP_HDQ_RX_DATA ;
 int OMAP_HDQ_TIMEOUT ;
 int dev_dbg (int ,char*,int) ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int hdq_reg_merge (struct hdq_data*,int ,int,int) ;
 int hdq_wait_queue ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int hdq_read_byte(struct hdq_data *hdq_data, u8 *val)
{
 int ret = 0;
 u8 status;

 ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (ret < 0) {
  ret = -EINTR;
  goto rtn;
 }

 if (!hdq_data->hdq_usecount) {
  ret = -EINVAL;
  goto out;
 }

 if (!(hdq_data->hdq_irqstatus & OMAP_HDQ_INT_STATUS_RXCOMPLETE)) {
  hdq_reg_merge(hdq_data, OMAP_HDQ_CTRL_STATUS,
   OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO,
   OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO);



  wait_event_timeout(hdq_wait_queue,
       (hdq_data->hdq_irqstatus
        & OMAP_HDQ_INT_STATUS_RXCOMPLETE),
       OMAP_HDQ_TIMEOUT);

  hdq_reg_merge(hdq_data, OMAP_HDQ_CTRL_STATUS, 0,
   OMAP_HDQ_CTRL_STATUS_DIR);
  status = hdq_data->hdq_irqstatus;

  if (!(status & OMAP_HDQ_INT_STATUS_RXCOMPLETE)) {
   dev_dbg(hdq_data->dev, "timeout waiting for"
    " RXCOMPLETE, %x", status);
   ret = -ETIMEDOUT;
   goto out;
  }
 }

 *val = hdq_reg_in(hdq_data, OMAP_HDQ_RX_DATA);
out:
 mutex_unlock(&hdq_data->hdq_mutex);
rtn:
 return ret;

}
