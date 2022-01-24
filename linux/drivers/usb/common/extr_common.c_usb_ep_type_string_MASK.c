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
 int FUNC0 (char const**) ; 
 char const** ep_type_names ; 

const char *FUNC1(int ep_type)
{
	if (ep_type < 0 || ep_type >= FUNC0(ep_type_names))
		return "unknown";

	return ep_type_names[ep_type];
}