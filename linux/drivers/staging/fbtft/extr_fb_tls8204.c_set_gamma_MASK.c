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
struct fbtft_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*,int) ; 

__attribute__((used)) static int FUNC1(struct fbtft_par *par, u32 *curves)
{
	/* apply mask */
	curves[0] &= 0x7F;

	FUNC0(par, 0x21); /* turn on extended instruction set */
	FUNC0(par, 0x80 | curves[0]);
	FUNC0(par, 0x20); /* turn off extended instruction set */

	return 0;
}