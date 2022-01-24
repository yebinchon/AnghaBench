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
typedef  int u16 ;
struct rt2x00_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* FIRMWARE_RT2561 ; 
 char* FIRMWARE_RT2561s ; 
 char* FIRMWARE_RT2661 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
#define  RT2561_PCI_ID 130 
#define  RT2561s_PCI_ID 129 
#define  RT2661_PCI_ID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct rt2x00_dev *rt2x00dev)
{
	u16 chip;
	char *fw_name;

	FUNC0(FUNC1(rt2x00dev->dev), PCI_DEVICE_ID, &chip);
	switch (chip) {
	case RT2561_PCI_ID:
		fw_name = FIRMWARE_RT2561;
		break;
	case RT2561s_PCI_ID:
		fw_name = FIRMWARE_RT2561s;
		break;
	case RT2661_PCI_ID:
		fw_name = FIRMWARE_RT2661;
		break;
	default:
		fw_name = NULL;
		break;
	}

	return fw_name;
}