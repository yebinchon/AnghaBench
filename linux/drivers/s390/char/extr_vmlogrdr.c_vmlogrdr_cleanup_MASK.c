#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buffer; } ;

/* Variables and functions */
 int MAXMINOR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_1__* sys_ser ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * vmlogrdr_cdev ; 
 scalar_t__ vmlogrdr_major ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
        int i;

	if (vmlogrdr_cdev) {
		FUNC1(vmlogrdr_cdev);
		vmlogrdr_cdev=NULL;
	}
	for (i=0; i < MAXMINOR; ++i ) {
		FUNC4(&sys_ser[i]);
		FUNC2((unsigned long)sys_ser[i].buffer);
	}
	FUNC5();
	if (vmlogrdr_major) {
		FUNC3(FUNC0(vmlogrdr_major, 0), MAXMINOR);
		vmlogrdr_major=0;
	}
}