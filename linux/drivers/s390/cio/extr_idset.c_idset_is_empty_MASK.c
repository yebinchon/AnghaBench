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
struct idset {int num_ssid; int num_id; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(struct idset *set)
{
	return FUNC0(set->bitmap, set->num_ssid * set->num_id);
}