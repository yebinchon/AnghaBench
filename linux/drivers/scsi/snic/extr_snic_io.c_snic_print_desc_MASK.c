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
 int SNIC_DESC_LOGGING ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int snic_log_level ; 

void
FUNC1(const char *fn, char *os_buf, int len)
{
	if (snic_log_level & SNIC_DESC_LOGGING)
		FUNC0(fn, os_buf, len);
}