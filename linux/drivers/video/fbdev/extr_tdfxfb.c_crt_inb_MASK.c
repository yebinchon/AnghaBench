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
typedef  int /*<<< orphan*/  u32 ;
struct tdfx_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRT_D ; 
 int /*<<< orphan*/  CRT_I ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tdfx_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 FUNC3(struct tdfx_par *par, u32 idx)
{
	FUNC2(par, CRT_I, idx);
	FUNC0();
	return FUNC1(par, CRT_D);
}