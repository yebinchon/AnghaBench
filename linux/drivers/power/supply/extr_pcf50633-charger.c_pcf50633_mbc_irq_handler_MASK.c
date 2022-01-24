#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcf50633_mbc {int usb_online; int adapter_online; TYPE_2__* pcf; int /*<<< orphan*/  adapter; int /*<<< orphan*/  usb; int /*<<< orphan*/  ac; } ;
struct TYPE_5__ {TYPE_1__* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mbc_event_callback ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int PCF50633_IRQ_ADPINS ; 
 int PCF50633_IRQ_ADPREM ; 
 int PCF50633_IRQ_USBINS ; 
 int PCF50633_IRQ_USBREM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC3(int irq, void *data)
{
	struct pcf50633_mbc *mbc = data;

	/* USB */
	if (irq == PCF50633_IRQ_USBINS) {
		mbc->usb_online = 1;
	} else if (irq == PCF50633_IRQ_USBREM) {
		mbc->usb_online = 0;
		FUNC0(mbc->pcf, 0);
	}

	/* Adapter */
	if (irq == PCF50633_IRQ_ADPINS)
		mbc->adapter_online = 1;
	else if (irq == PCF50633_IRQ_ADPREM)
		mbc->adapter_online = 0;

	FUNC1(mbc->ac);
	FUNC1(mbc->usb);
	FUNC1(mbc->adapter);

	if (mbc->pcf->pdata->mbc_event_callback)
		mbc->pcf->pdata->mbc_event_callback(mbc->pcf, irq);
}