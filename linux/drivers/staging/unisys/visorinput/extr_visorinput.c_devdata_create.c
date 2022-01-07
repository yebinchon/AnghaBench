
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visorinput_devdata {int paused; unsigned int keycode_table_bytes; int lock_visor_dev; scalar_t__ interrupts_enabled; int visorinput_dev; int keycode_table; struct visor_device* dev; } ;
struct TYPE_2__ {unsigned int x_res; unsigned int y_res; } ;
struct visor_input_channel_data {TYPE_1__ mouse; } ;
struct visor_device {int device; } ;
struct channel_header {int dummy; } ;
typedef enum visorinput_dev_type { ____Placeholder_visorinput_dev_type } visorinput_dev_type ;


 int GFP_KERNEL ;
 int KEYCODE_TABLE_BYTES ;
 int dev_set_drvdata (int *,struct visorinput_devdata*) ;
 int input_free_device (int ) ;
 scalar_t__ input_register_device (int ) ;
 int kfree (struct visorinput_devdata*) ;
 struct visorinput_devdata* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_client_keyboard (struct visorinput_devdata*,int ) ;
 int setup_client_mouse (struct visorinput_devdata*,unsigned int,unsigned int) ;
 int visorbus_enable_channel_interrupts (struct visor_device*) ;
 unsigned int visorbus_read_channel (struct visor_device*,int,struct visor_input_channel_data*,unsigned int) ;


 int visorkbd_ext_keycode ;
 int visorkbd_keycode ;

__attribute__((used)) static struct visorinput_devdata *devdata_create(struct visor_device *dev,
       enum visorinput_dev_type dtype)
{
 struct visorinput_devdata *devdata = ((void*)0);
 unsigned int extra_bytes = 0;
 unsigned int size, xres, yres, err;
 struct visor_input_channel_data data;

 if (dtype == 129)

  extra_bytes = KEYCODE_TABLE_BYTES * 2;
 devdata = kzalloc(sizeof(*devdata) + extra_bytes, GFP_KERNEL);
 if (!devdata)
  return ((void*)0);
 mutex_init(&devdata->lock_visor_dev);
 mutex_lock(&devdata->lock_visor_dev);
 devdata->dev = dev;







 devdata->paused = 1;






 switch (dtype) {
 case 129:
  devdata->keycode_table_bytes = extra_bytes;
  memcpy(devdata->keycode_table, visorkbd_keycode,
         KEYCODE_TABLE_BYTES);
  memcpy(devdata->keycode_table + KEYCODE_TABLE_BYTES,
         visorkbd_ext_keycode, KEYCODE_TABLE_BYTES);
  devdata->visorinput_dev = setup_client_keyboard
   (devdata, devdata->keycode_table);
  if (!devdata->visorinput_dev)
   goto cleanups_register;
  break;
 case 128:
  size = sizeof(struct visor_input_channel_data);
  err = visorbus_read_channel(dev, sizeof(struct channel_header),
         &data, size);
  if (err)
   goto cleanups_register;
  xres = data.mouse.x_res;
  yres = data.mouse.y_res;
  devdata->visorinput_dev = setup_client_mouse(devdata, xres,
            yres);
  if (!devdata->visorinput_dev)
   goto cleanups_register;
  break;
 default:

  break;
 }

 dev_set_drvdata(&dev->device, devdata);
 mutex_unlock(&devdata->lock_visor_dev);







 if (input_register_device(devdata->visorinput_dev)) {
  input_free_device(devdata->visorinput_dev);
  goto err_kfree_devdata;
 }

 mutex_lock(&devdata->lock_visor_dev);





 devdata->paused = 0;
 if (devdata->interrupts_enabled)
  visorbus_enable_channel_interrupts(dev);
 mutex_unlock(&devdata->lock_visor_dev);

 return devdata;

cleanups_register:
 mutex_unlock(&devdata->lock_visor_dev);
err_kfree_devdata:
 kfree(devdata);
 return ((void*)0);
}
