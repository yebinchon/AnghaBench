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
 int WIRELESS_11B ; 
 int WIRELESS_11BG ; 
 int WIRELESS_11G ; 
 scalar_t__ FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 

int FUNC2(unsigned char *rate, int ratelen, int channel)
{
	/*  could be pure B, pure G, or B/G */
	if (FUNC1(rate))
		return WIRELESS_11B;
	else if (FUNC0(rate))
		return	WIRELESS_11BG;
	else
		return WIRELESS_11G;
}