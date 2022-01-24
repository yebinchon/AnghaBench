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
 int FUNC0 (unsigned int*) ; 
 unsigned int* pqi_supported_event_types ; 

__attribute__((used)) static inline int FUNC1(unsigned int event_type)
{
	int index;

	for (index = 0; index < FUNC0(pqi_supported_event_types); index++)
		if (event_type == pqi_supported_event_types[index])
			return index;

	return -1;
}