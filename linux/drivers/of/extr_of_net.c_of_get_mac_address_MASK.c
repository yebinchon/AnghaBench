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
struct device_node {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct device_node*,char*) ; 
 void const* FUNC1 (struct device_node*) ; 

const void *FUNC2(struct device_node *np)
{
	const void *addr;

	addr = FUNC0(np, "mac-address");
	if (addr)
		return addr;

	addr = FUNC0(np, "local-mac-address");
	if (addr)
		return addr;

	addr = FUNC0(np, "address");
	if (addr)
		return addr;

	return FUNC1(np);
}