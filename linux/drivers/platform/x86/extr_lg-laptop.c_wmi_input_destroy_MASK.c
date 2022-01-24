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
 int INIT_INPUT_WMI_0 ; 
 int INIT_INPUT_WMI_2 ; 
 int INIT_SPARSE_KEYMAP ; 
 int /*<<< orphan*/  WMI_EVENT_GUID0 ; 
 int /*<<< orphan*/  WMI_EVENT_GUID2 ; 
 int inited ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wmi_input_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (inited & INIT_INPUT_WMI_2)
		FUNC1(WMI_EVENT_GUID2);

	if (inited & INIT_INPUT_WMI_0)
		FUNC1(WMI_EVENT_GUID0);

	if (inited & INIT_SPARSE_KEYMAP)
		FUNC0(wmi_input_dev);

	inited &= ~(INIT_INPUT_WMI_0 | INIT_INPUT_WMI_2 | INIT_SPARSE_KEYMAP);
}