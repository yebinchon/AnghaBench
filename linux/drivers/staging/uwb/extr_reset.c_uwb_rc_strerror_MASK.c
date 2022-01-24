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
 unsigned int FUNC0 (char const**) ; 
 char const** __strerror ; 

const char *FUNC1(unsigned code)
{
	if (code == 255)
		return "time out";
	if (code >= FUNC0(__strerror))
		return "unknown error";
	return __strerror[code];
}