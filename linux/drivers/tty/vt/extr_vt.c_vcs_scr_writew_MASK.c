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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {unsigned long vc_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int softcursor_original ; 

void FUNC2(struct vc_data *vc, u16 val, u16 *org)
{
	FUNC1(val, org);
	if ((unsigned long)org == vc->vc_pos) {
		softcursor_original = -1;
		FUNC0(vc);
	}
}