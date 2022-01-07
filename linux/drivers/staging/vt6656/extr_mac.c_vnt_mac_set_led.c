
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MAC_REG_PAPEDELAY ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

int vnt_mac_set_led(struct vnt_private *priv, u8 state, u8 led)
{
 u8 data[2];

 data[0] = led;
 data[1] = state;

 return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_PAPEDELAY,
          MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
