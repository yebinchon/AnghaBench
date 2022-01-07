
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_smbios_priv {int req_buf_size; struct wmi_ioctl_buffer* buf; int wdev; } ;
struct TYPE_2__ {int * input; int cmd_select; int cmd_class; } ;
struct wmi_ioctl_buffer {TYPE_1__ std; } ;
struct wmi_device {int dev; } ;



 int EFAULT ;
 int ENODEV ;
 int ENOIOCTLCMD ;
 int call_mutex ;
 int dell_smbios_call_filter (int *,TYPE_1__*) ;
 int dev_err (int *,char*,int ,int ,int ) ;
 struct wmi_smbios_priv* dev_get_drvdata (int *) ;
 int memcpy (struct wmi_ioctl_buffer*,struct wmi_ioctl_buffer*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int run_smbios_call (int ) ;

__attribute__((used)) static long dell_smbios_wmi_filter(struct wmi_device *wdev, unsigned int cmd,
       struct wmi_ioctl_buffer *arg)
{
 struct wmi_smbios_priv *priv;
 int ret = 0;

 switch (cmd) {
 case 128:
  mutex_lock(&call_mutex);
  priv = dev_get_drvdata(&wdev->dev);
  if (!priv) {
   ret = -ENODEV;
   goto fail_smbios_cmd;
  }
  memcpy(priv->buf, arg, priv->req_buf_size);
  if (dell_smbios_call_filter(&wdev->dev, &priv->buf->std)) {
   dev_err(&wdev->dev, "Invalid call %d/%d:%8x\n",
    priv->buf->std.cmd_class,
    priv->buf->std.cmd_select,
    priv->buf->std.input[0]);
   ret = -EFAULT;
   goto fail_smbios_cmd;
  }
  ret = run_smbios_call(priv->wdev);
  if (ret)
   goto fail_smbios_cmd;
  memcpy(arg, priv->buf, priv->req_buf_size);
fail_smbios_cmd:
  mutex_unlock(&call_mutex);
  break;
 default:
  ret = -ENOIOCTLCMD;
 }
 return ret;
}
