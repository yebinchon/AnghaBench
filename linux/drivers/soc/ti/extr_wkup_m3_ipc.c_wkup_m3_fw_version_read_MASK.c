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
struct wkup_m3_ipc {int dummy; } ;

/* Variables and functions */
 int M3_FW_VERSION_MASK ; 
 int FUNC0 (struct wkup_m3_ipc*,int) ; 

__attribute__((used)) static int FUNC1(struct wkup_m3_ipc *m3_ipc)
{
	int val;

	val = FUNC0(m3_ipc, 2);

	return val & M3_FW_VERSION_MASK;
}