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
struct u132 {int hc_fminterval; } ;

/* Variables and functions */
 int FIT ; 
 int periodicstart ; 
 int FUNC0 (struct u132*,int,int*) ; 
 int FUNC1 (struct u132*,int,int) ; 

__attribute__((used)) static int FUNC2(struct u132 *u132)
{
	int retval;
	u32 fi = u132->hc_fminterval & 0x03fff;
	u32 fit;
	u32 fminterval;
	retval = FUNC0(u132, fminterval, &fminterval);
	if (retval)
		return retval;
	fit = fminterval & FIT;
	retval = FUNC1(u132, fminterval,
		(fit ^ FIT) | u132->hc_fminterval);
	if (retval)
		return retval;
	return FUNC1(u132, periodicstart,
	       ((9 * fi) / 10) & 0x3fff);
}