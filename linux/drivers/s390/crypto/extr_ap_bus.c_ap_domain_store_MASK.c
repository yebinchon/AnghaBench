#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  aqm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DBF_DEBUG ; 
 size_t EINVAL ; 
 int ap_domain_index ; 
 int /*<<< orphan*/  ap_domain_lock ; 
 int ap_max_domain_id ; 
 TYPE_1__ ap_perms ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct bus_type *bus,
			       const char *buf, size_t count)
{
	int domain;

	if (FUNC3(buf, "%i\n", &domain) != 1 ||
	    domain < 0 || domain > ap_max_domain_id ||
	    !FUNC4(domain, ap_perms.aqm))
		return -EINVAL;
	FUNC1(&ap_domain_lock);
	ap_domain_index = domain;
	FUNC2(&ap_domain_lock);

	FUNC0(DBF_DEBUG, "stored new default domain=%d\n", domain);

	return count;
}