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
typedef  scalar_t__ u32 ;
struct pm3_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM3InFIFOSpace ; 
 scalar_t__ FUNC0 (struct pm3_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct pm3_par *par, u32 n)
{
	while (FUNC0(par, PM3InFIFOSpace) < n)
		FUNC1();
}