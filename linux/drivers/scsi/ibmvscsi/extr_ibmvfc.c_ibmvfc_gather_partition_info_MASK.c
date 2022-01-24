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
struct ibmvfc_host {unsigned int partition_number; int /*<<< orphan*/  partition_name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (char*) ; 
 void* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC4(struct ibmvfc_host *vhost)
{
	struct device_node *rootdn;
	const char *name;
	const unsigned int *num;

	rootdn = FUNC0("/");
	if (!rootdn)
		return;

	name = FUNC1(rootdn, "ibm,partition-name", NULL);
	if (name)
		FUNC3(vhost->partition_name, name, sizeof(vhost->partition_name));
	num = FUNC1(rootdn, "ibm,partition-no", NULL);
	if (num)
		vhost->partition_number = *num;
	FUNC2(rootdn);
}