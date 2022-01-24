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
 int CIFS_LARGE_BUFFER ; 
 int CIFS_SMALL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void
FUNC2(int resp_buftype, void *rsp)
{
	if (resp_buftype == CIFS_SMALL_BUFFER)
		FUNC1(rsp);
	else if (resp_buftype == CIFS_LARGE_BUFFER)
		FUNC0(rsp);
}