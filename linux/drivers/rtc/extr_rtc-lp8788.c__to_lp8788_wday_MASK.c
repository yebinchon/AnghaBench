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
 int LP8788_WDAY_SET ; 

__attribute__((used)) static inline int FUNC0(int tm_wday)
{
	return LP8788_WDAY_SET << (tm_wday - 1);
}