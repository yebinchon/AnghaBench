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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int OCF_LENGTH_CPC_NAME ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
			     struct kobj_attribute *attr, char *page)
{
	char name[OCF_LENGTH_CPC_NAME + 1];

	FUNC1(name);
	name[OCF_LENGTH_CPC_NAME] = 0;
	FUNC0(name, OCF_LENGTH_CPC_NAME);
	return FUNC2(page, PAGE_SIZE, "%s\n", name);
}