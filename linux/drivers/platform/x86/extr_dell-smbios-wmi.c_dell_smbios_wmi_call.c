
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wmi_smbios_priv {int req_buf_size; TYPE_1__* buf; int wdev; } ;
struct calling_interface_buffer {int dummy; } ;
struct TYPE_2__ {struct calling_interface_buffer std; int ext; } ;


 int ENODEV ;
 int call_mutex ;
 struct wmi_smbios_priv* get_first_smbios_priv () ;
 int memcpy (struct calling_interface_buffer*,struct calling_interface_buffer*,size_t) ;
 int memset (int *,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int run_smbios_call (int ) ;

__attribute__((used)) static int dell_smbios_wmi_call(struct calling_interface_buffer *buffer)
{
 struct wmi_smbios_priv *priv;
 size_t difference;
 size_t size;
 int ret;

 mutex_lock(&call_mutex);
 priv = get_first_smbios_priv();
 if (!priv) {
  ret = -ENODEV;
  goto out_wmi_call;
 }

 size = sizeof(struct calling_interface_buffer);
 difference = priv->req_buf_size - sizeof(u64) - size;

 memset(&priv->buf->ext, 0, difference);
 memcpy(&priv->buf->std, buffer, size);
 ret = run_smbios_call(priv->wdev);
 memcpy(buffer, &priv->buf->std, size);
out_wmi_call:
 mutex_unlock(&call_mutex);

 return ret;
}
