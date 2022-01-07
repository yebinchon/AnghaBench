
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hfa384x {scalar_t__ dlstate; TYPE_1__* wlandev; } ;
struct TYPE_2__ {int netdev; } ;


 int EINVAL ;
 int HFA384x_ADDR_CMD_MKOFF (int) ;
 int HFA384x_ADDR_CMD_MKPAGE (int) ;
 scalar_t__ HFA384x_DLSTATE_RAMENABLED ;
 int HFA384x_USB_RWMEM_MAXLEN ;
 int hfa384x_dowmem (struct hfa384x*,int,int,int *,int) ;
 int netdev_info (int ,char*,int,int) ;

int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
{
 int result = 0;
 int nwrites;
 u8 *data = buf;
 int i;
 u32 curraddr;
 u16 currpage;
 u16 curroffset;
 u16 currlen;


 if (hw->dlstate != HFA384x_DLSTATE_RAMENABLED)
  return -EINVAL;

 netdev_info(hw->wlandev->netdev, "Writing %d bytes to ram @0x%06x\n",
      len, daddr);


 nwrites = len / HFA384x_USB_RWMEM_MAXLEN;
 nwrites += len % HFA384x_USB_RWMEM_MAXLEN ? 1 : 0;


 for (i = 0; i < nwrites; i++) {

  curraddr = daddr + (i * HFA384x_USB_RWMEM_MAXLEN);
  currpage = HFA384x_ADDR_CMD_MKPAGE(curraddr);
  curroffset = HFA384x_ADDR_CMD_MKOFF(curraddr);
  currlen = len - (i * HFA384x_USB_RWMEM_MAXLEN);
  if (currlen > HFA384x_USB_RWMEM_MAXLEN)
   currlen = HFA384x_USB_RWMEM_MAXLEN;


  result = hfa384x_dowmem(hw,
     currpage,
     curroffset,
     data + (i * HFA384x_USB_RWMEM_MAXLEN),
     currlen);

  if (result)
   break;


 }

 return result;
}
