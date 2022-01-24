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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ci_hdrc {int role; int /*<<< orphan*/  irq; TYPE_1__** roles; } ;
typedef  size_t ssize_t ;
typedef  enum ci_role { ____Placeholder_ci_role } ci_role ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CI_ROLE_END ; 
 size_t CI_ROLE_GADGET ; 
 size_t CI_ROLE_HOST ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 int FUNC1 (struct ci_hdrc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*) ; 
 struct ci_hdrc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t n)
{
	struct ci_hdrc *ci = FUNC3(dev);
	enum ci_role role;
	int ret;

	if (!(ci->roles[CI_ROLE_HOST] && ci->roles[CI_ROLE_GADGET])) {
		FUNC4(dev, "Current configuration is not dual-role, quit\n");
		return -EPERM;
	}

	for (role = CI_ROLE_HOST; role < CI_ROLE_END; role++)
		if (!FUNC10(buf, ci->roles[role]->name,
			     FUNC9(ci->roles[role]->name)))
			break;

	if (role == CI_ROLE_END || role == ci->role)
		return -EINVAL;

	FUNC7(dev);
	FUNC5(ci->irq);
	FUNC2(ci);
	ret = FUNC1(ci, role);
	if (!ret && ci->role == CI_ROLE_GADGET)
		FUNC0(ci);
	FUNC6(ci->irq);
	FUNC8(dev);

	return (ret == 0) ? n : ret;
}