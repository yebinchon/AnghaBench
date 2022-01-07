
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int ippc_base; } ;


 int SSUSB_IP_DEV_PDN ;
 int SSUSB_IP_SW_RST ;
 int U3D_SSUSB_IP_PW_CTRL0 ;
 int U3D_SSUSB_IP_PW_CTRL2 ;
 int mtu3_clrbits (int ,int ,int ) ;
 int mtu3_setbits (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ssusb_ip_sw_reset(struct ssusb_mtk *ssusb)
{

 mtu3_setbits(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL0, SSUSB_IP_SW_RST);
 udelay(1);
 mtu3_clrbits(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL0, SSUSB_IP_SW_RST);







 mtu3_setbits(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL2, SSUSB_IP_DEV_PDN);
}
