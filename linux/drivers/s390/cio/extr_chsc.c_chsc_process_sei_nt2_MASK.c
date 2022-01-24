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
struct chsc_sei_nt2_area {int cc; int /*<<< orphan*/  ccdf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct chsc_sei_nt2_area *sei_area)
{
	switch (sei_area->cc) {
	case 1:
		FUNC2(sei_area->ccdf);
		break;
	case 2:
		FUNC1(sei_area->ccdf);
		break;
	default:
		FUNC0(2, "chsc: sei nt2 unhandled cc=%d\n",
			      sei_area->cc);
		break;
	}
}