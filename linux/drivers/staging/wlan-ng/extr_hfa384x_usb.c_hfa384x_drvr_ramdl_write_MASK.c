#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct hfa384x {scalar_t__ dlstate; TYPE_1__* wlandev; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ HFA384x_DLSTATE_RAMENABLED ; 
 int HFA384x_USB_RWMEM_MAXLEN ; 
 int FUNC2 (struct hfa384x*,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

int FUNC4(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
{
	int result = 0;
	int nwrites;
	u8 *data = buf;
	int i;
	u32 curraddr;
	u16 currpage;
	u16 curroffset;
	u16 currlen;

	/* Check that we're in the ram download state */
	if (hw->dlstate != HFA384x_DLSTATE_RAMENABLED)
		return -EINVAL;

	FUNC3(hw->wlandev->netdev, "Writing %d bytes to ram @0x%06x\n",
		    len, daddr);

	/* How many dowmem calls?  */
	nwrites = len / HFA384x_USB_RWMEM_MAXLEN;
	nwrites += len % HFA384x_USB_RWMEM_MAXLEN ? 1 : 0;

	/* Do blocking wmem's */
	for (i = 0; i < nwrites; i++) {
		/* make address args */
		curraddr = daddr + (i * HFA384x_USB_RWMEM_MAXLEN);
		currpage = FUNC1(curraddr);
		curroffset = FUNC0(curraddr);
		currlen = len - (i * HFA384x_USB_RWMEM_MAXLEN);
		if (currlen > HFA384x_USB_RWMEM_MAXLEN)
			currlen = HFA384x_USB_RWMEM_MAXLEN;

		/* Do blocking ctlx */
		result = FUNC2(hw,
					currpage,
					curroffset,
					data + (i * HFA384x_USB_RWMEM_MAXLEN),
					currlen);

		if (result)
			break;

		/* TODO: We really should have a readback. */
	}

	return result;
}