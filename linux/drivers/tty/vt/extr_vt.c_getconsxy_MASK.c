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
struct vc_data {int /*<<< orphan*/  vc_y; int /*<<< orphan*/  vc_x; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(struct vc_data *vc, unsigned char *p)
{
	/* clamp values if they don't fit */
	p[0] = FUNC0(vc->vc_x, 0xFFu);
	p[1] = FUNC0(vc->vc_y, 0xFFu);
}