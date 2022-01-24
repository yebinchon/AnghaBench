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
struct megasas_instance {scalar_t__ PlasmaFW111; } ;

/* Variables and functions */
 int FUNC0 (struct megasas_instance*,int) ; 
 int FUNC1 (struct megasas_instance*,int) ; 

__attribute__((used)) static int FUNC2(struct megasas_instance *instance,
	int initial)
{
	int retval;

	if (instance->PlasmaFW111)
		retval = FUNC0(instance, initial);
	else
		retval = FUNC1(instance, initial);
	return retval;
}