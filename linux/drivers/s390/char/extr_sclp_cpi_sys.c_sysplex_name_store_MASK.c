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
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_cpi_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  sysplex_name ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
				  struct kobj_attribute *attr,
				  const char *buf,
	size_t len)
{
	int rc;

	rc = FUNC0("sysplex_name", buf);
	if (rc)
		return rc;

	FUNC1(&sclp_cpi_mutex);
	FUNC3(sysplex_name, buf);
	FUNC2(&sclp_cpi_mutex);

	return len;
}