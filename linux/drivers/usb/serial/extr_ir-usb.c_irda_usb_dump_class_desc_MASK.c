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
struct usb_serial {TYPE_1__* dev; } ;
struct usb_irda_cs_descriptor {int /*<<< orphan*/  bMaxUnicastList; int /*<<< orphan*/  bIrdaRateSniff; int /*<<< orphan*/  bmAdditionalBOFs; int /*<<< orphan*/  wBaudRate; int /*<<< orphan*/  bmMinTurnaroundTime; int /*<<< orphan*/  bmWindowSize; int /*<<< orphan*/  bmDataSize; int /*<<< orphan*/  bcdSpecRevision; int /*<<< orphan*/  bDescriptorType; int /*<<< orphan*/  bLength; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct usb_serial *serial,
					    struct usb_irda_cs_descriptor *desc)
{
	struct device *dev = &serial->dev->dev;

	FUNC1(dev, "bLength=%x\n", desc->bLength);
	FUNC1(dev, "bDescriptorType=%x\n", desc->bDescriptorType);
	FUNC1(dev, "bcdSpecRevision=%x\n", FUNC0(desc->bcdSpecRevision));
	FUNC1(dev, "bmDataSize=%x\n", desc->bmDataSize);
	FUNC1(dev, "bmWindowSize=%x\n", desc->bmWindowSize);
	FUNC1(dev, "bmMinTurnaroundTime=%d\n", desc->bmMinTurnaroundTime);
	FUNC1(dev, "wBaudRate=%x\n", FUNC0(desc->wBaudRate));
	FUNC1(dev, "bmAdditionalBOFs=%x\n", desc->bmAdditionalBOFs);
	FUNC1(dev, "bIrdaRateSniff=%x\n", desc->bIrdaRateSniff);
	FUNC1(dev, "bMaxUnicastList=%x\n", desc->bMaxUnicastList);
}