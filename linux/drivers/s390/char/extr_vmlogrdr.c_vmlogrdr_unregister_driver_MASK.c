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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * vmlogrdr_class ; 
 int /*<<< orphan*/  vmlogrdr_driver ; 
 int /*<<< orphan*/  vmlogrdr_iucv_handler ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0(vmlogrdr_class);
	vmlogrdr_class = NULL;
	FUNC1(&vmlogrdr_driver);
	FUNC2(&vmlogrdr_iucv_handler, 1);
}