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
struct pm2fb_par {scalar_t__ type; int mem_control; int boot_address; int mem_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PM2F_BEING_RESET ; 
 int /*<<< orphan*/  PM2R_BOOT_ADDRESS ; 
 int /*<<< orphan*/  PM2R_FIFO_DISCON ; 
 int /*<<< orphan*/  PM2R_MEM_CONFIG ; 
 int /*<<< orphan*/  PM2R_MEM_CONTROL ; 
 int /*<<< orphan*/  PM2R_RESET_STATUS ; 
 int /*<<< orphan*/  PM2VR_RD_INDEX_HIGH ; 
 scalar_t__ PM2_TYPE_PERMEDIA2V ; 
 int /*<<< orphan*/  FUNC1 (struct pm2fb_par*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct pm2fb_par *p)
{
	if (p->type == PM2_TYPE_PERMEDIA2V)
		FUNC5(p, PM2VR_RD_INDEX_HIGH, 0);
	FUNC5(p, PM2R_RESET_STATUS, 0);
	FUNC3();
	while (FUNC4(p, PM2R_RESET_STATUS) & PM2F_BEING_RESET)
		FUNC2();
	FUNC3();
#ifdef CONFIG_FB_PM2_FIFO_DISCONNECT
	DPRINTK("FIFO disconnect enabled\n");
	pm2_WR(p, PM2R_FIFO_DISCON, 1);
	mb();
#endif

	/* Restore stashed memory config information from probe */
	FUNC1(p, 3);
	FUNC5(p, PM2R_MEM_CONTROL, p->mem_control);
	FUNC5(p, PM2R_BOOT_ADDRESS, p->boot_address);
	FUNC6();
	FUNC5(p, PM2R_MEM_CONFIG, p->mem_config);
}