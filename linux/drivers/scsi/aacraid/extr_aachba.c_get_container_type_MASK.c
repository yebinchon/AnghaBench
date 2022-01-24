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
 unsigned int FUNC0 (char**) ; 
 char** container_types ; 

char * FUNC1(unsigned tindex)
{
	if (tindex >= FUNC0(container_types))
		tindex = FUNC0(container_types) - 1;
	return container_types[tindex];
}