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
struct imx_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UFCR ; 
 unsigned int UFCR_DCEDTE ; 
 unsigned int UFCR_RFDIV ; 
 unsigned char UFCR_TXTL_SHF ; 
 unsigned int FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx_port *sport,
				unsigned char txwl, unsigned char rxwl)
{
	unsigned int val;

	/* set receiver / transmitter trigger level */
	val = FUNC0(sport, UFCR) & (UFCR_RFDIV | UFCR_DCEDTE);
	val |= txwl << UFCR_TXTL_SHF | rxwl;
	FUNC1(sport, val, UFCR);
}