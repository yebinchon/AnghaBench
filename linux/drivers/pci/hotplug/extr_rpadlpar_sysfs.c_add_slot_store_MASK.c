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
typedef  int ssize_t ;

/* Variables and functions */
 int MAX_DRC_NAME_LEN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct kobj_attribute *attr,
			      const char *buf, size_t nbytes)
{
	char drc_name[MAX_DRC_NAME_LEN];
	char *end;
	int rc;

	if (nbytes >= MAX_DRC_NAME_LEN)
		return 0;

	FUNC1(drc_name, buf, nbytes);

	end = FUNC2(drc_name, '\n');
	if (!end)
		end = &drc_name[nbytes];
	*end = '\0';

	rc = FUNC0(drc_name);
	if (rc)
		return rc;

	return nbytes;
}