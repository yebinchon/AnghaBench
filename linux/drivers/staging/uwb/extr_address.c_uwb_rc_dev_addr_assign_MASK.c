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
struct uwb_rc {int dummy; } ;
struct uwb_dev_addr {int* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uwb_rc*,struct uwb_dev_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (struct uwb_rc*,struct uwb_dev_addr*) ; 

int FUNC3(struct uwb_rc *rc)
{
	struct uwb_dev_addr new_addr;

	do {
		FUNC1(new_addr.data, sizeof(new_addr.data));
	} while (new_addr.data[0] == 0x00 || new_addr.data[0] == 0xff
		 || FUNC0(rc, &new_addr));

	return FUNC2(rc, &new_addr);
}