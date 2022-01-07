
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int hdq_irqstatus; int hdq_mutex; int dev; } ;


 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_DIR ;
 int OMAP_HDQ_CTRL_STATUS_GO ;
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ;
 int OMAP_HDQ_CTRL_STATUS_SINGLE ;
 int OMAP_HDQ_INT_STATUS_RXCOMPLETE ;
 int OMAP_HDQ_INT_STATUS_TXCOMPLETE ;
 int OMAP_HDQ_RX_DATA ;
 int OMAP_HDQ_TIMEOUT ;
 int OMAP_HDQ_TX_DATA ;
 int dev_dbg (int ,char*) ;
 int hdq_reg_in (void*,int ) ;
 int hdq_reg_merge (void*,int ,int,int) ;
 int hdq_reg_out (void*,int ,int) ;
 int hdq_wait_queue ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int omap_hdq_get (void*) ;
 int omap_hdq_put (void*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static u8 omap_w1_triplet(void *_hdq, u8 bdir)
{
 u8 id_bit, comp_bit;
 int err;
 u8 ret = 0x3;
 struct hdq_data *hdq_data = _hdq;
 u8 ctrl = OMAP_HDQ_CTRL_STATUS_SINGLE | OMAP_HDQ_CTRL_STATUS_GO |
    OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK;
 u8 mask = ctrl | OMAP_HDQ_CTRL_STATUS_DIR;

 omap_hdq_get(_hdq);

 err = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (err < 0) {
  dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
  goto rtn;
 }

 hdq_data->hdq_irqstatus = 0;

 hdq_reg_merge(_hdq, OMAP_HDQ_CTRL_STATUS,
        ctrl | OMAP_HDQ_CTRL_STATUS_DIR, mask);
 err = wait_event_timeout(hdq_wait_queue,
     (hdq_data->hdq_irqstatus
      & OMAP_HDQ_INT_STATUS_RXCOMPLETE),
     OMAP_HDQ_TIMEOUT);
 if (err == 0) {
  dev_dbg(hdq_data->dev, "RX wait elapsed\n");
  goto out;
 }
 id_bit = (hdq_reg_in(_hdq, OMAP_HDQ_RX_DATA) & 0x01);

 hdq_data->hdq_irqstatus = 0;

 hdq_reg_merge(_hdq, OMAP_HDQ_CTRL_STATUS,
        ctrl | OMAP_HDQ_CTRL_STATUS_DIR, mask);
 err = wait_event_timeout(hdq_wait_queue,
     (hdq_data->hdq_irqstatus
      & OMAP_HDQ_INT_STATUS_RXCOMPLETE),
     OMAP_HDQ_TIMEOUT);
 if (err == 0) {
  dev_dbg(hdq_data->dev, "RX wait elapsed\n");
  goto out;
 }
 comp_bit = (hdq_reg_in(_hdq, OMAP_HDQ_RX_DATA) & 0x01);

 if (id_bit && comp_bit) {
  ret = 0x03;
  goto out;
 }
 if (!id_bit && !comp_bit) {

  ret = bdir ? 0x04 : 0;
 } else {

  bdir = id_bit;
  ret = id_bit ? 0x05 : 0x02;
 }


 hdq_reg_out(_hdq, OMAP_HDQ_TX_DATA, bdir);
 hdq_reg_merge(_hdq, OMAP_HDQ_CTRL_STATUS, ctrl, mask);
 err = wait_event_timeout(hdq_wait_queue,
     (hdq_data->hdq_irqstatus
      & OMAP_HDQ_INT_STATUS_TXCOMPLETE),
     OMAP_HDQ_TIMEOUT);
 if (err == 0) {
  dev_dbg(hdq_data->dev, "TX wait elapsed\n");
  goto out;
 }

 hdq_reg_merge(_hdq, OMAP_HDQ_CTRL_STATUS, 0,
        OMAP_HDQ_CTRL_STATUS_SINGLE);

out:
 mutex_unlock(&hdq_data->hdq_mutex);
rtn:
 omap_hdq_put(_hdq);
 return ret;
}
