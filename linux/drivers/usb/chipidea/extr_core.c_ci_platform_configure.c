
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lpm; } ;
struct ci_hdrc {TYPE_2__* platdata; TYPE_1__ hw_bank; int phy; } ;
struct TYPE_4__ {int flags; int itc_setting; int tx_burst_size; int rx_burst_size; int ahb_burst_config; } ;


 int AHBBRST_MASK ;
 int CI_HDRC_DISABLE_DEVICE_STREAMING ;
 int CI_HDRC_DISABLE_HOST_STREAMING ;
 int CI_HDRC_FORCE_FULLSPEED ;
 int CI_HDRC_OVERRIDE_AHB_BURST ;
 int CI_HDRC_OVERRIDE_RX_BURST ;
 int CI_HDRC_OVERRIDE_TX_BURST ;
 int CI_HDRC_SET_NON_ZERO_TTHA ;
 int DEVLC_PFSC ;
 int ID_SBUSCFG ;
 int OP_BURSTSIZE ;
 int OP_DEVLC ;
 int OP_PORTSC ;
 int OP_TTCTRL ;
 int OP_USBCMD ;
 int OP_USBMODE ;
 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 int PORTSC_PFSC ;
 int RX_BURST_MASK ;
 int TTCTRL_TTHA ;
 int TTCTRL_TTHA_MASK ;
 int TX_BURST_MASK ;
 int USBMODE_CI_SDIS ;
 int USBMODE_CM ;
 scalar_t__ USBMODE_CM_DC ;
 scalar_t__ USBMODE_CM_HC ;
 int __ffs (int) ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_read_id_reg (struct ci_hdrc*,int ,int ) ;
 int hw_write (struct ci_hdrc*,int ,int,int) ;
 int hw_write_id_reg (struct ci_hdrc*,int ,int ,int ) ;
 int phy_set_mode (int ,int ) ;

void ci_platform_configure(struct ci_hdrc *ci)
{
 bool is_device_mode, is_host_mode;

 is_device_mode = hw_read(ci, OP_USBMODE, USBMODE_CM) == USBMODE_CM_DC;
 is_host_mode = hw_read(ci, OP_USBMODE, USBMODE_CM) == USBMODE_CM_HC;

 if (is_device_mode) {
  phy_set_mode(ci->phy, PHY_MODE_USB_DEVICE);

  if (ci->platdata->flags & CI_HDRC_DISABLE_DEVICE_STREAMING)
   hw_write(ci, OP_USBMODE, USBMODE_CI_SDIS,
     USBMODE_CI_SDIS);
 }

 if (is_host_mode) {
  phy_set_mode(ci->phy, PHY_MODE_USB_HOST);

  if (ci->platdata->flags & CI_HDRC_DISABLE_HOST_STREAMING)
   hw_write(ci, OP_USBMODE, USBMODE_CI_SDIS,
     USBMODE_CI_SDIS);
 }

 if (ci->platdata->flags & CI_HDRC_FORCE_FULLSPEED) {
  if (ci->hw_bank.lpm)
   hw_write(ci, OP_DEVLC, DEVLC_PFSC, DEVLC_PFSC);
  else
   hw_write(ci, OP_PORTSC, PORTSC_PFSC, PORTSC_PFSC);
 }

 if (ci->platdata->flags & CI_HDRC_SET_NON_ZERO_TTHA)
  hw_write(ci, OP_TTCTRL, TTCTRL_TTHA_MASK, TTCTRL_TTHA);

 hw_write(ci, OP_USBCMD, 0xff0000, ci->platdata->itc_setting << 16);

 if (ci->platdata->flags & CI_HDRC_OVERRIDE_AHB_BURST)
  hw_write_id_reg(ci, ID_SBUSCFG, AHBBRST_MASK,
   ci->platdata->ahb_burst_config);


 if (!hw_read_id_reg(ci, ID_SBUSCFG, AHBBRST_MASK)) {
  if (ci->platdata->flags & CI_HDRC_OVERRIDE_TX_BURST)
   hw_write(ci, OP_BURSTSIZE, TX_BURST_MASK,
   ci->platdata->tx_burst_size << __ffs(TX_BURST_MASK));

  if (ci->platdata->flags & CI_HDRC_OVERRIDE_RX_BURST)
   hw_write(ci, OP_BURSTSIZE, RX_BURST_MASK,
    ci->platdata->rx_burst_size);
 }
}
