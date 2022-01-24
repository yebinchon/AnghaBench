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
struct arcfb_par {int dummy; } ;

/* Variables and functions */
 unsigned char KS_SET_X ; 
 int /*<<< orphan*/  FUNC0 (struct arcfb_par*,unsigned int,unsigned char) ; 

__attribute__((used)) static void FUNC1(struct arcfb_par *par,
				unsigned int chipindex, unsigned char x)
{
	FUNC0(par, chipindex, KS_SET_X|x);
}