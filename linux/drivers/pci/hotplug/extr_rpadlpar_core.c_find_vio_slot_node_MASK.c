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
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct device_node *FUNC4(char *drc_name)
{
	struct device_node *parent = FUNC0(NULL, "vdevice");
	struct device_node *dn = NULL;
	int rc;

	if (!parent)
		return NULL;

	while ((dn = FUNC1(parent, dn))) {
		rc = FUNC3(dn, drc_name, NULL);
		if (rc == 0)
			break;
	}
	FUNC2(parent);

	return dn;
}