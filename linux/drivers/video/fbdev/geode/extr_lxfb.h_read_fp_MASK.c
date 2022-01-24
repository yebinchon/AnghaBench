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
typedef  int /*<<< orphan*/  uint32_t ;
struct lxfb_par {scalar_t__ vp_regs; } ;

/* Variables and functions */
 scalar_t__ VP_FP_START ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline uint32_t FUNC1(struct lxfb_par *par, int reg)
{
	return FUNC0(par->vp_regs + 8*reg + VP_FP_START);
}