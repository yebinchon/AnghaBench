
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct urb {int pipe; TYPE_1__* dev; } ;
struct imx21 {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; } ;


 int DW0_ADDRESS ;
 int DW0_DIRECT ;
 int DW0_ENDPNT ;
 int DW0_FORMAT ;
 int DW0_MAXPKTSIZ ;
 int DW0_SPEED ;
 scalar_t__ USB_SPEED_LOW ;
 int etd_writel (struct imx21*,int,int ,int) ;
 scalar_t__* fmt_urb_to_etd ;
 scalar_t__ usb_pipedevice (int ) ;
 scalar_t__ usb_pipeendpoint (int ) ;
 size_t usb_pipetype (int ) ;

__attribute__((used)) static void setup_etd_dword0(struct imx21 *imx21,
 int etd_num, struct urb *urb, u8 dir, u16 maxpacket)
{
 etd_writel(imx21, etd_num, 0,
  ((u32) usb_pipedevice(urb->pipe)) << DW0_ADDRESS |
  ((u32) usb_pipeendpoint(urb->pipe) << DW0_ENDPNT) |
  ((u32) dir << DW0_DIRECT) |
  ((u32) ((urb->dev->speed == USB_SPEED_LOW) ?
   1 : 0) << DW0_SPEED) |
  ((u32) fmt_urb_to_etd[usb_pipetype(urb->pipe)] << DW0_FORMAT) |
  ((u32) maxpacket << DW0_MAXPKTSIZ));
}
