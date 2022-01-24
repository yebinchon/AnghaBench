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
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline int FUNC1(unsigned int speed)
{
	/* Max async payload is 4096 - see IEEE 1394-2008 tables 6-4, 16-18 */
	return FUNC0(512 << speed, 4096);
}