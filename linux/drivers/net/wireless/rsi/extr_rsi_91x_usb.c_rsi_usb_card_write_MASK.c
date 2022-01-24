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
typedef  int u16 ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {int* tx_buffer; int* bulkout_endpoint_addr; int write_fail; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 int HZ ; 
 int RSI_USB_TX_HEAD_ROOM ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rsi_hw *adapter,
			      u8 *buf,
			      u16 len,
			      u8 endpoint)
{
	struct rsi_91x_usbdev *dev = (struct rsi_91x_usbdev *)adapter->rsi_dev;
	int status;
	u8 *seg = dev->tx_buffer;
	int transfer;
	int ep = dev->bulkout_endpoint_addr[endpoint - 1];

	FUNC1(seg, 0, len + RSI_USB_TX_HEAD_ROOM);
	FUNC0(seg + RSI_USB_TX_HEAD_ROOM, buf, len);
	len += RSI_USB_TX_HEAD_ROOM;
	transfer = len;
	status = FUNC3(dev->usbdev,
			      FUNC4(dev->usbdev, ep),
			      (void *)seg,
			      (int)len,
			      &transfer,
			      HZ * 5);

	if (status < 0) {
		FUNC2(ERR_ZONE,
			"Card write failed with error code :%10d\n", status);
		dev->write_fail = 1;
	}
	return status;
}