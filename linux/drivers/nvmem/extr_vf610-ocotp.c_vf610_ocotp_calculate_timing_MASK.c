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
typedef  int u32 ;
struct vf610_ocotp {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int DEF_RELAX ; 
 int /*<<< orphan*/  OCOTP_TIMING_RELAX ; 
 int /*<<< orphan*/  OCOTP_TIMING_STROBE_PROG ; 
 int /*<<< orphan*/  OCOTP_TIMING_STROBE_READ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vf610_ocotp *ocotp_dev)
{
	u32 clk_rate;
	u32 relax, strobe_read, strobe_prog;
	u32 timing;

	clk_rate = FUNC1(ocotp_dev->clk);

	/* Refer section OTP read/write timing parameters in TRM */
	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;

	timing = FUNC0(relax, OCOTP_TIMING_RELAX);
	timing |= FUNC0(strobe_read, OCOTP_TIMING_STROBE_READ);
	timing |= FUNC0(strobe_prog, OCOTP_TIMING_STROBE_PROG);

	return timing;
}