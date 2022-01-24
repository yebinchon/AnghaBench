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
typedef  unsigned long u32 ;
struct ocotp_priv {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int FUNC1 (unsigned long,int) ; 
 scalar_t__ IMX_OCOTP_ADDR_TIMING ; 
 unsigned long TIMING_RELAX_NS ; 
 unsigned long TIMING_STROBE_PROG_US ; 
 unsigned long TIMING_STROBE_READ_NS ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ocotp_priv *priv)
{
	unsigned long clk_rate = 0;
	unsigned long strobe_read, relax, strobe_prog;
	u32 timing = 0;

	/* 47.3.1.3.1
	 * Program HW_OCOTP_TIMING[STROBE_PROG] and HW_OCOTP_TIMING[RELAX]
	 * fields with timing values to match the current frequency of the
	 * ipg_clk. OTP writes will work at maximum bus frequencies as long
	 * as the HW_OCOTP_TIMING parameters are set correctly.
	 *
	 * Note: there are minimum timings required to ensure an OTP fuse burns
	 * correctly that are independent of the ipg_clk. Those values are not
	 * formally documented anywhere however, working from the minimum
	 * timings given in u-boot we can say:
	 *
	 * - Minimum STROBE_PROG time is 10 microseconds. Intuitively 10
	 *   microseconds feels about right as representative of a minimum time
	 *   to physically burn out a fuse.
	 *
	 * - Minimum STROBE_READ i.e. the time to wait post OTP fuse burn before
	 *   performing another read is 37 nanoseconds
	 *
	 * - Minimum RELAX timing is 17 nanoseconds. This final RELAX minimum
	 *   timing is not entirely clear the documentation says "This
	 *   count value specifies the time to add to all default timing
	 *   parameters other than the Tpgm and Trd. It is given in number
	 *   of ipg_clk periods." where Tpgm and Trd refer to STROBE_PROG
	 *   and STROBE_READ respectively. What the other timing parameters
	 *   are though, is not specified. Experience shows a zero RELAX
	 *   value will mess up a re-load of the shadow registers post OTP
	 *   burn.
	 */
	clk_rate = FUNC2(priv->clk);

	relax = FUNC1(clk_rate * TIMING_RELAX_NS, 1000000000) - 1;
	strobe_read = FUNC1(clk_rate * TIMING_STROBE_READ_NS,
				   1000000000);
	strobe_read += 2 * (relax + 1) - 1;
	strobe_prog = FUNC0(clk_rate * TIMING_STROBE_PROG_US,
					1000000);
	strobe_prog += 2 * (relax + 1) - 1;

	timing = FUNC3(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
	timing |= strobe_prog & 0x00000FFF;
	timing |= (relax       << 12) & 0x0000F000;
	timing |= (strobe_read << 16) & 0x003F0000;

	FUNC4(timing, priv->base + IMX_OCOTP_ADDR_TIMING);
}