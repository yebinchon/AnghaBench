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
struct tridentfb_par {scalar_t__ io_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGCOLOR ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  COLOR ; 
 int /*<<< orphan*/  DST1 ; 
 int /*<<< orphan*/  DST2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,unsigned int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tridentfb_par *par, const char *data,
			     u32 x, u32 y, u32 w, u32 h, u32 c, u32 b)
{
	unsigned size = ((w + 31) >> 5) * h;

	FUNC2(par, COLOR, c);
	FUNC2(par, BGCOLOR, b);
	FUNC2(par, CMD, 0xa0000000 | 3 << 19);

	FUNC2(par, DST1, FUNC1(x, y));
	FUNC2(par, DST2, FUNC1(x + w - 1, y + h - 1));

	FUNC0(par->io_virt + 0x10000, data, size);
}