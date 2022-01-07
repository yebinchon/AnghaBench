
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int MESSAGE_REQUEST_BBREG ;
 int vnt_control_out_u8 (struct vnt_private*,int ,int,int) ;

int vnt_exit_deep_sleep(struct vnt_private *priv)
{
 int ret = 0;


 ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0c, 0x00);
 if (ret)
  return ret;


 return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);
}
