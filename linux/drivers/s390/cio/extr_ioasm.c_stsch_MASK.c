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
struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct subchannel_id,struct schib*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel_id,struct schib*,int) ; 

int FUNC2(struct subchannel_id schid, struct schib *addr)
{
	int ccode;

	ccode = FUNC0(schid, addr);
	FUNC1(schid, addr, ccode);

	return ccode;
}