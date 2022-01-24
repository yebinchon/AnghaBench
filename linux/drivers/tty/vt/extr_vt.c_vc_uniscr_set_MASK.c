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
struct vc_data {struct uni_screen* vc_uni_screen; } ;
struct uni_screen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uni_screen*) ; 

__attribute__((used)) static void FUNC1(struct vc_data *vc, struct uni_screen *new_uniscr)
{
	FUNC0(vc->vc_uni_screen);
	vc->vc_uni_screen = new_uniscr;
}