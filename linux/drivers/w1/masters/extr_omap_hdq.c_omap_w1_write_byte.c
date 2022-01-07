
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {scalar_t__ init_trans; int hdq_mutex; int dev; } ;


 int W1_SKIP_ROM ;
 int dev_dbg (int ,char*,...) ;
 int hdq_write_byte (struct hdq_data*,int ,int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int omap_hdq_break (struct hdq_data*) ;
 int omap_hdq_get (struct hdq_data*) ;
 int omap_hdq_put (struct hdq_data*) ;

__attribute__((used)) static void omap_w1_write_byte(void *_hdq, u8 byte)
{
 struct hdq_data *hdq_data = _hdq;
 int ret;
 u8 status;


 if (hdq_data->init_trans == 0)
  omap_hdq_get(hdq_data);






 if (byte == W1_SKIP_ROM)
  omap_hdq_break(hdq_data);

 ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (ret < 0) {
  dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
  return;
 }
 hdq_data->init_trans++;
 mutex_unlock(&hdq_data->hdq_mutex);

 ret = hdq_write_byte(hdq_data, byte, &status);
 if (ret < 0) {
  dev_dbg(hdq_data->dev, "TX failure:Ctrl status %x\n", status);
  return;
 }


 if (hdq_data->init_trans > 1) {
  omap_hdq_put(hdq_data);
  ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
  if (ret < 0) {
   dev_dbg(hdq_data->dev, "Could not acquire mutex\n");
   return;
  }
  hdq_data->init_trans = 0;
  mutex_unlock(&hdq_data->hdq_mutex);
 }
}
