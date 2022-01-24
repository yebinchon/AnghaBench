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
struct tdfx_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATT_IW ; 
 int /*<<< orphan*/  IS1_R ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tdfx_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct tdfx_par *par)
{
	FUNC1(par, IS1_R);
	FUNC0();
	FUNC2(par, ATT_IW, 0x20);
}