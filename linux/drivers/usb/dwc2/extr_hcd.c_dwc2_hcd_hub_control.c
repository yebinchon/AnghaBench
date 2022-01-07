
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int* DeviceRemovable; } ;
struct TYPE_7__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bDescLength; int bNbrPorts; int bPwrOn2PwrGood; TYPE_2__ u; int bHubContrCurrent; int wHubCharacteristics; int bDescriptorType; } ;
struct TYPE_8__ {int dma_desc_enable; int power_down; int dma_desc_fs_enable; } ;
struct TYPE_9__ {int port_connect_status; int port_over_current_change; int port_reset_change; int port_l1_change; int port_suspend_change; int port_enable_change; int port_connect_status_change; } ;
struct TYPE_10__ {TYPE_4__ b; int d32; } ;
struct dwc2_hsotg {int new_connection; int otg_port; int dev; int lx_state; int hibernated; TYPE_3__ params; TYPE_5__ flags; int bus_suspended; } ;
typedef int __le32 ;






 int DWC2_L0 ;
 int EINVAL ;



 int HCFG ;
 int HCFG_DESCDMA ;
 int HPRT0 ;
 int HPRT0_CONNSTS ;
 int HPRT0_ENA ;
 int HPRT0_OVRCURRACT ;
 int HPRT0_PWR ;
 int HPRT0_RST ;
 int HPRT0_SPD_HIGH_SPEED ;
 int HPRT0_SPD_LOW_SPEED ;
 int HPRT0_SPD_MASK ;
 int HPRT0_SPD_SHIFT ;
 int HPRT0_SUSP ;
 int HPRT0_TSTCTL_MASK ;
 int HPRT0_TSTCTL_SHIFT ;
 int HUB_CHAR_COMMON_LPSM ;
 int HUB_CHAR_INDV_PORT_OCPM ;
 int PCGCTL ;
 int PCGCTL_ENBL_SLEEP_GATING ;
 int PCGCTL_STOPPCLK ;


 int USB_DT_HUB ;
 int USB_PORT_FEAT_L1 ;




 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_C_ENABLE ;
 int USB_PORT_STAT_C_L1 ;
 int USB_PORT_STAT_C_OVERCURRENT ;
 int USB_PORT_STAT_C_RESET ;
 int USB_PORT_STAT_C_SUSPEND ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;
 int USB_PORT_STAT_OVERCURRENT ;
 int USB_PORT_STAT_POWER ;
 int USB_PORT_STAT_RESET ;
 int USB_PORT_STAT_SUSPEND ;
 int USB_PORT_STAT_TEST ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int dev_vdbg (int ,char*,int,...) ;
 int dev_warn (int ,char*) ;
 int dwc2_enter_hibernation (struct dwc2_hsotg*,int) ;
 int dwc2_exit_hibernation (struct dwc2_hsotg*,int ,int,int) ;
 int dwc2_hcd_is_b_host (struct dwc2_hsotg*) ;
 int dwc2_port_resume (struct dwc2_hsotg*) ;
 int dwc2_port_suspend (struct dwc2_hsotg*,int) ;
 int dwc2_read_hprt0 (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_vbus_supply_exit (struct dwc2_hsotg*) ;
 int dwc2_vbus_supply_init (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int memset (char*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int dwc2_hcd_hub_control(struct dwc2_hsotg *hsotg, u16 typereq,
    u16 wvalue, u16 windex, char *buf, u16 wlength)
{
 struct usb_hub_descriptor *hub_desc;
 int retval = 0;
 u32 hprt0;
 u32 port_status;
 u32 speed;
 u32 pcgctl;
 u32 pwr;

 switch (typereq) {
 case 146:
  dev_dbg(hsotg->dev, "ClearHubFeature %1xh\n", wvalue);

  switch (wvalue) {
  case 148:
  case 147:

   break;

  default:
   retval = -EINVAL;
   dev_err(hsotg->dev,
    "ClearHubFeature request %1xh unknown\n",
    wvalue);
  }
  break;

 case 145:
  if (wvalue != USB_PORT_FEAT_L1)
   if (!windex || windex > 1)
    goto error;
  switch (wvalue) {
  case 133:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_ENABLE\n");
   hprt0 = dwc2_read_hprt0(hsotg);
   hprt0 |= HPRT0_ENA;
   dwc2_writel(hsotg, hprt0, HPRT0);
   break;

  case 129:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_SUSPEND\n");

   if (hsotg->bus_suspended) {
    if (hsotg->hibernated)
     dwc2_exit_hibernation(hsotg, 0, 0, 1);
    else
     dwc2_port_resume(hsotg);
   }
   break;

  case 131:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_POWER\n");
   hprt0 = dwc2_read_hprt0(hsotg);
   pwr = hprt0 & HPRT0_PWR;
   hprt0 &= ~HPRT0_PWR;
   dwc2_writel(hsotg, hprt0, HPRT0);
   if (pwr)
    dwc2_vbus_supply_exit(hsotg);
   break;

  case 132:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_INDICATOR\n");

   break;

  case 139:



   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_CONNECTION\n");
   hsotg->flags.b.port_connect_status_change = 0;
   break;

  case 135:

   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_RESET\n");
   hsotg->flags.b.port_reset_change = 0;
   break;

  case 138:




   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_ENABLE\n");
   hsotg->flags.b.port_enable_change = 0;
   break;

  case 134:





   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_SUSPEND\n");
   hsotg->flags.b.port_suspend_change = 0;
   break;

  case 136:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_PORT_L1\n");
   hsotg->flags.b.port_l1_change = 0;
   break;

  case 137:
   dev_dbg(hsotg->dev,
    "ClearPortFeature USB_PORT_FEAT_C_OVER_CURRENT\n");
   hsotg->flags.b.port_over_current_change = 0;
   break;

  default:
   retval = -EINVAL;
   dev_err(hsotg->dev,
    "ClearPortFeature request %1xh unknown or unsupported\n",
    wvalue);
  }
  break;

 case 144:
  dev_dbg(hsotg->dev, "GetHubDescriptor\n");
  hub_desc = (struct usb_hub_descriptor *)buf;
  hub_desc->bDescLength = 9;
  hub_desc->bDescriptorType = USB_DT_HUB;
  hub_desc->bNbrPorts = 1;
  hub_desc->wHubCharacteristics =
   cpu_to_le16(HUB_CHAR_COMMON_LPSM |
        HUB_CHAR_INDV_PORT_OCPM);
  hub_desc->bPwrOn2PwrGood = 1;
  hub_desc->bHubContrCurrent = 0;
  hub_desc->u.hs.DeviceRemovable[0] = 0;
  hub_desc->u.hs.DeviceRemovable[1] = 0xff;
  break;

 case 143:
  dev_dbg(hsotg->dev, "GetHubStatus\n");
  memset(buf, 0, 4);
  break;

 case 142:
  dev_vdbg(hsotg->dev,
    "GetPortStatus wIndex=0x%04x flags=0x%08x\n", windex,
    hsotg->flags.d32);
  if (!windex || windex > 1)
   goto error;

  port_status = 0;
  if (hsotg->flags.b.port_connect_status_change)
   port_status |= USB_PORT_STAT_C_CONNECTION << 16;
  if (hsotg->flags.b.port_enable_change)
   port_status |= USB_PORT_STAT_C_ENABLE << 16;
  if (hsotg->flags.b.port_suspend_change)
   port_status |= USB_PORT_STAT_C_SUSPEND << 16;
  if (hsotg->flags.b.port_l1_change)
   port_status |= USB_PORT_STAT_C_L1 << 16;
  if (hsotg->flags.b.port_reset_change)
   port_status |= USB_PORT_STAT_C_RESET << 16;
  if (hsotg->flags.b.port_over_current_change) {
   dev_warn(hsotg->dev, "Overcurrent change detected\n");
   port_status |= USB_PORT_STAT_C_OVERCURRENT << 16;
  }

  if (!hsotg->flags.b.port_connect_status) {







   *(__le32 *)buf = cpu_to_le32(port_status);
   break;
  }

  hprt0 = dwc2_readl(hsotg, HPRT0);
  dev_vdbg(hsotg->dev, "  HPRT0: 0x%08x\n", hprt0);

  if (hprt0 & HPRT0_CONNSTS)
   port_status |= USB_PORT_STAT_CONNECTION;
  if (hprt0 & HPRT0_ENA)
   port_status |= USB_PORT_STAT_ENABLE;
  if (hprt0 & HPRT0_SUSP)
   port_status |= USB_PORT_STAT_SUSPEND;
  if (hprt0 & HPRT0_OVRCURRACT)
   port_status |= USB_PORT_STAT_OVERCURRENT;
  if (hprt0 & HPRT0_RST)
   port_status |= USB_PORT_STAT_RESET;
  if (hprt0 & HPRT0_PWR)
   port_status |= USB_PORT_STAT_POWER;

  speed = (hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT;
  if (speed == HPRT0_SPD_HIGH_SPEED)
   port_status |= USB_PORT_STAT_HIGH_SPEED;
  else if (speed == HPRT0_SPD_LOW_SPEED)
   port_status |= USB_PORT_STAT_LOW_SPEED;

  if (hprt0 & HPRT0_TSTCTL_MASK)
   port_status |= USB_PORT_STAT_TEST;


  if (hsotg->params.dma_desc_fs_enable) {




   if (hsotg->new_connection &&
       ((port_status &
         (USB_PORT_STAT_CONNECTION |
          USB_PORT_STAT_HIGH_SPEED |
          USB_PORT_STAT_LOW_SPEED)) ==
          USB_PORT_STAT_CONNECTION)) {
    u32 hcfg;

    dev_info(hsotg->dev, "Enabling descriptor DMA mode\n");
    hsotg->params.dma_desc_enable = 1;
    hcfg = dwc2_readl(hsotg, HCFG);
    hcfg |= HCFG_DESCDMA;
    dwc2_writel(hsotg, hcfg, HCFG);
    hsotg->new_connection = 0;
   }
  }

  dev_vdbg(hsotg->dev, "port_status=%08x\n", port_status);
  *(__le32 *)buf = cpu_to_le32(port_status);
  break;

 case 141:
  dev_dbg(hsotg->dev, "SetHubFeature\n");

  break;

 case 140:
  dev_dbg(hsotg->dev, "SetPortFeature\n");
  if (wvalue != 128 && (!windex || windex > 1))
   goto error;

  if (!hsotg->flags.b.port_connect_status) {







   break;
  }

  switch (wvalue) {
  case 129:
   dev_dbg(hsotg->dev,
    "SetPortFeature - USB_PORT_FEAT_SUSPEND\n");
   if (windex != hsotg->otg_port)
    goto error;
   if (hsotg->params.power_down == 2)
    dwc2_enter_hibernation(hsotg, 1);
   else
    dwc2_port_suspend(hsotg, windex);
   break;

  case 131:
   dev_dbg(hsotg->dev,
    "SetPortFeature - USB_PORT_FEAT_POWER\n");
   hprt0 = dwc2_read_hprt0(hsotg);
   pwr = hprt0 & HPRT0_PWR;
   hprt0 |= HPRT0_PWR;
   dwc2_writel(hsotg, hprt0, HPRT0);
   if (!pwr)
    dwc2_vbus_supply_init(hsotg);
   break;

  case 130:
   if (hsotg->params.power_down == 2 &&
       hsotg->hibernated)
    dwc2_exit_hibernation(hsotg, 0, 1, 1);
   hprt0 = dwc2_read_hprt0(hsotg);
   dev_dbg(hsotg->dev,
    "SetPortFeature - USB_PORT_FEAT_RESET\n");
   pcgctl = dwc2_readl(hsotg, PCGCTL);
   pcgctl &= ~(PCGCTL_ENBL_SLEEP_GATING | PCGCTL_STOPPCLK);
   dwc2_writel(hsotg, pcgctl, PCGCTL);

   dwc2_writel(hsotg, 0, PCGCTL);

   hprt0 = dwc2_read_hprt0(hsotg);
   pwr = hprt0 & HPRT0_PWR;

   hprt0 &= ~HPRT0_SUSP;






   if (!dwc2_hcd_is_b_host(hsotg)) {
    hprt0 |= HPRT0_PWR | HPRT0_RST;
    dev_dbg(hsotg->dev,
     "In host mode, hprt0=%08x\n", hprt0);
    dwc2_writel(hsotg, hprt0, HPRT0);
    if (!pwr)
     dwc2_vbus_supply_init(hsotg);
   }


   msleep(50);
   hprt0 &= ~HPRT0_RST;
   dwc2_writel(hsotg, hprt0, HPRT0);
   hsotg->lx_state = DWC2_L0;
   break;

  case 132:
   dev_dbg(hsotg->dev,
    "SetPortFeature - USB_PORT_FEAT_INDICATOR\n");

   break;

  case 128:
   hprt0 = dwc2_read_hprt0(hsotg);
   dev_dbg(hsotg->dev,
    "SetPortFeature - USB_PORT_FEAT_TEST\n");
   hprt0 &= ~HPRT0_TSTCTL_MASK;
   hprt0 |= (windex >> 8) << HPRT0_TSTCTL_SHIFT;
   dwc2_writel(hsotg, hprt0, HPRT0);
   break;

  default:
   retval = -EINVAL;
   dev_err(hsotg->dev,
    "SetPortFeature %1xh unknown or unsupported\n",
    wvalue);
   break;
  }
  break;

 default:
error:
  retval = -EINVAL;
  dev_dbg(hsotg->dev,
   "Unknown hub control request: %1xh wIndex: %1xh wValue: %1xh\n",
   typereq, windex, wvalue);
  break;
 }

 return retval;
}
