#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct usb_device {int dummy; } ;
struct intf_priv {scalar_t__ intf_dev; } ;
struct dvobj_priv {struct usb_device* pusbdev; } ;
typedef  scalar_t__ palloc_buf ;
typedef  int addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int RTL871X_VENQT_READ ; 
 int RTL871X_VENQT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int*,int) ; 
 int FUNC3 (struct usb_device*,unsigned int,int,int,scalar_t__,scalar_t__,int*,scalar_t__,int) ; 
 unsigned int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC6(struct intf_priv *pintfpriv, u8 request, u16 value,
		      u16 index, void *pdata, u16 len, u8 requesttype)
{
	unsigned int pipe;
	int status;
	u8 reqtype;
	struct dvobj_priv *pdvobjpriv = (struct dvobj_priv *)
					 pintfpriv->intf_dev;
	struct usb_device *udev = pdvobjpriv->pusbdev;
	/* For mstar platform, mstar suggests the address for USB IO
	 * should be 16 bytes alignment. Trying to fix it here.
	 */
	u8 *palloc_buf, *pIo_buf;

	palloc_buf = FUNC1((u32)len + 16, GFP_ATOMIC);
	if (!palloc_buf)
		return -ENOMEM;
	pIo_buf = palloc_buf + 16 - ((addr_t)(palloc_buf) & 0x0f);
	if (requesttype == 0x01) {
		pipe = FUNC4(udev, 0); /* read_in */
		reqtype =  RTL871X_VENQT_READ;
	} else {
		pipe = FUNC5(udev, 0); /* write_out */
		reqtype =  RTL871X_VENQT_WRITE;
		FUNC2(pIo_buf, pdata, len);
	}
	status = FUNC3(udev, pipe, request, reqtype, value, index,
				 pIo_buf, len, HZ / 2);
	if (status > 0) {  /* Success this control transfer. */
		if (requesttype == 0x01) {
			/* For Control read transfer, we have to copy the read
			 * data from pIo_buf to pdata.
			 */
			FUNC2(pdata, pIo_buf,  status);
		}
	}
	FUNC0(palloc_buf);
	return status;
}