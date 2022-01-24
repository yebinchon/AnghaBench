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
typedef  unsigned int u32 ;
struct tdfx_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DACADDR ; 
 int /*<<< orphan*/  DACDATA ; 
 int /*<<< orphan*/  FUNC0 (struct tdfx_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tdfx_par*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(struct tdfx_par *par, unsigned regno, u32 c)
{
	FUNC0(par, 2);
	FUNC2(par, DACADDR, regno);
	/* read after write makes it working */
	FUNC1(par, DACADDR);
	FUNC2(par, DACDATA, c);
}