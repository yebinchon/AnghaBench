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
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resource_alignment_lock ; 
 char* resource_alignment_param ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct bus_type *bus,
					const char *buf, size_t count)
{
	char *param = FUNC1(buf, count, GFP_KERNEL);

	if (!param)
		return -ENOMEM;

	FUNC2(&resource_alignment_lock);
	FUNC0(resource_alignment_param);
	resource_alignment_param = param;
	FUNC3(&resource_alignment_lock);
	return count;
}