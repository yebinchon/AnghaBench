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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 

void FUNC2(struct idset *to, struct idset *from)
{
	int len = FUNC1(to->num_ssid * to->num_id, from->num_ssid * from->num_id);

	FUNC0(to->bitmap, to->bitmap, from->bitmap, len);
}