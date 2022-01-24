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
struct ni_gpct {int dummy; } ;
typedef  enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ni_gpct*,int,unsigned int,unsigned int,int) ; 

void FUNC1(struct ni_gpct *counter, enum ni_gpct_register reg,
		     unsigned int mask, unsigned int value)
{
	FUNC0(counter, reg, mask, value, 0x0);
}