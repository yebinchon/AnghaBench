
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int ETH_ALEN ;
 int MAC_REG_BSSID0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

void vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr)
{
 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BSSID0,
   MESSAGE_REQUEST_MACREG, ETH_ALEN, addr);
}
