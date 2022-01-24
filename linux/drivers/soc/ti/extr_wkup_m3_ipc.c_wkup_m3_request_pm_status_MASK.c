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
 int M3_STATUS_RESP_MASK ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (struct wkup_m3_ipc*,int) ; 

__attribute__((used)) static int FUNC2(struct wkup_m3_ipc *m3_ipc)
{
	unsigned int i;
	int val;

	val = FUNC1(m3_ipc, 1);

	i = M3_STATUS_RESP_MASK & val;
	i >>= FUNC0(M3_STATUS_RESP_MASK);

	return i;
}