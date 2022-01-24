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
typedef  scalar_t__ uint16_t ;
struct mb_cmd_name {scalar_t__ cmd; char const* str; } ;

/* Variables and functions */
 int FUNC0 (struct mb_cmd_name*) ; 
 struct mb_cmd_name* mb_str ; 

__attribute__((used)) static const char *FUNC1(uint16_t cmd)
{
	int i;
	struct mb_cmd_name *e;

	for (i = 0; i < FUNC0(mb_str); i++) {
		e = mb_str + i;
		if (cmd == e->cmd)
			return e->str;
	}
	return "unknown";
}