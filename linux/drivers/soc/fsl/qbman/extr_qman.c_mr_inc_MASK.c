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
typedef  union qm_mr_entry {int dummy; } qm_mr_entry ;

/* Variables and functions */
 union qm_mr_entry* FUNC0 (union qm_mr_entry*) ; 

__attribute__((used)) static inline union qm_mr_entry *FUNC1(union qm_mr_entry *e)
{
	return FUNC0(e + 1);
}