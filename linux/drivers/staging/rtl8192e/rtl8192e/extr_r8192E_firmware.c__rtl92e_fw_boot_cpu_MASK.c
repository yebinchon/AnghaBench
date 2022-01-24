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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_GEN ; 
 int /*<<< orphan*/  CPU_GEN_BOOT_RDY ; 
 int /*<<< orphan*/  CPU_GEN_PUT_CODE_OK ; 
 int CPU_GEN_PWR_STB_CPU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct net_device *dev)
{
	u32		CPU_status = 0;

	if (!FUNC0(dev, CPU_GEN_PUT_CODE_OK, 200)) {
		FUNC3(dev, "Firmware download failed.\n");
		return false;
	}
	FUNC2(dev, "Download Firmware: Put code ok!\n");

	CPU_status = FUNC4(dev, CPU_GEN);
	FUNC5(dev, CPU_GEN,
		      (u8)((CPU_status|CPU_GEN_PWR_STB_CPU)&0xff));
	FUNC1(1);

	if (!FUNC0(dev, CPU_GEN_BOOT_RDY, 200)) {
		FUNC3(dev, "Firmware boot failed.\n");
		return false;
	}

	FUNC2(dev, "Download Firmware: Boot ready!\n");

	return true;
}