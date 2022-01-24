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
struct wahc {int /*<<< orphan*/  dti_buf; scalar_t__ dti_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wahc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wahc*) ; 

void FUNC5(struct wahc *wa)
{
	if (wa->dti_urb) {
		FUNC1(wa->dti_urb);
		FUNC2(wa->dti_urb);
	}
	FUNC0(wa->dti_buf);
	FUNC3(wa);
	FUNC4(wa);
}