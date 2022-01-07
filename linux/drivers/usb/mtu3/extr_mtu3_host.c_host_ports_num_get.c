
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssusb_mtk {int u3_ports; int u2_ports; int dev; int ippc_base; } ;


 int SSUSB_IP_XHCI_U2_PORT_NUM (int ) ;
 int SSUSB_IP_XHCI_U3_PORT_NUM (int ) ;
 int U3D_SSUSB_IP_XHCI_CAP ;
 int dev_dbg (int ,char*,int ,int ) ;
 int mtu3_readl (int ,int ) ;

__attribute__((used)) static void host_ports_num_get(struct ssusb_mtk *ssusb)
{
 u32 xhci_cap;

 xhci_cap = mtu3_readl(ssusb->ippc_base, U3D_SSUSB_IP_XHCI_CAP);
 ssusb->u2_ports = SSUSB_IP_XHCI_U2_PORT_NUM(xhci_cap);
 ssusb->u3_ports = SSUSB_IP_XHCI_U3_PORT_NUM(xhci_cap);

 dev_dbg(ssusb->dev, "host - u2_ports:%d, u3_ports:%d\n",
   ssusb->u2_ports, ssusb->u3_ports);
}
