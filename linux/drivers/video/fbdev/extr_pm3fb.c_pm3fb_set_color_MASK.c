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
struct pm3_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM3RD_PaletteData ; 
 int /*<<< orphan*/  PM3RD_PaletteWriteAddress ; 
 int /*<<< orphan*/  FUNC0 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm3_par*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct pm3_par *par, unsigned char regno,
			unsigned char r, unsigned char g, unsigned char b)
{
	FUNC0(par, 4);
	FUNC1(par, PM3RD_PaletteWriteAddress, regno);
	FUNC2();
	FUNC1(par, PM3RD_PaletteData, r);
	FUNC2();
	FUNC1(par, PM3RD_PaletteData, g);
	FUNC2();
	FUNC1(par, PM3RD_PaletteData, b);
	FUNC2();
}