#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  UConfig1; int /*<<< orphan*/  UConfig0; int /*<<< orphan*/  Capabilities; int /*<<< orphan*/  BuildNumber; int /*<<< orphan*/  MinorVersion; int /*<<< orphan*/  MajorVersion; int /*<<< orphan*/  BootCodeLength; } ;
struct edgeport_serial {TYPE_2__ boot_descriptor; TYPE_3__* serial; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EDGE_BOOT_DESC_ADDR ; 
 int /*<<< orphan*/  EDGE_BOOT_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct edgeport_serial *edge_serial)
{
	struct device *dev = &edge_serial->serial->dev->dev;
	int response;

	FUNC0(dev, "getting boot descriptor\n");

	response = FUNC3(edge_serial->serial,
				(EDGE_BOOT_DESC_ADDR & 0xffff0000) >> 16,
				(__u16)(EDGE_BOOT_DESC_ADDR & 0x0000ffff),
				EDGE_BOOT_DESC_LEN,
				(__u8 *)(&edge_serial->boot_descriptor));

	if (response < 0) {
		FUNC1(dev, "error in getting boot descriptor: %d\n",
				response);
	} else {
		FUNC0(dev, "**Boot Descriptor:\n");
		FUNC0(dev, "  BootCodeLength: %d\n",
			FUNC2(edge_serial->boot_descriptor.BootCodeLength));
		FUNC0(dev, "  MajorVersion:   %d\n",
			edge_serial->boot_descriptor.MajorVersion);
		FUNC0(dev, "  MinorVersion:   %d\n",
			edge_serial->boot_descriptor.MinorVersion);
		FUNC0(dev, "  BuildNumber:    %d\n",
			FUNC2(edge_serial->boot_descriptor.BuildNumber));
		FUNC0(dev, "  Capabilities:   0x%x\n",
		      FUNC2(edge_serial->boot_descriptor.Capabilities));
		FUNC0(dev, "  UConfig0:       %d\n",
			edge_serial->boot_descriptor.UConfig0);
		FUNC0(dev, "  UConfig1:       %d\n",
			edge_serial->boot_descriptor.UConfig1);
	}
}