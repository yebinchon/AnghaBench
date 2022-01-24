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
struct fbtft_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*,int) ; 

__attribute__((used)) static void FUNC1(struct fbtft_par *par)
{
	/* Set Column Address */
	FUNC0(par, 0x21);
	FUNC0(par, 0x20);
	FUNC0(par, 0x5F);

	/* Set Page Address */
	FUNC0(par, 0x22);
	FUNC0(par, 0x0);
	FUNC0(par, 0x5);
}