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
typedef  int /*<<< orphan*/  u8 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 size_t EIO ; 
 size_t EMSGSIZE ; 
 size_t EPERM ; 
 scalar_t__ OS_ID_LINUX ; 
 int /*<<< orphan*/  PDCS_ADDR_OSD1 ; 
 scalar_t__ PDC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ pdcs_osid ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
				 struct kobj_attribute *attr,
				 const char *buf, size_t count)
{
	u8 in[16];

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (!buf || !count)
		return -EINVAL;

	if (FUNC4(pdcs_osid != OS_ID_LINUX))
		return -EPERM;

	if (count > 16)
		return -EMSGSIZE;

	/* We'll use a local copy of buf */
	FUNC2(in, 0, 16);
	FUNC1(in, buf, count);

	if (FUNC3(PDCS_ADDR_OSD1, &in, sizeof(in)) != PDC_OK)
		return -EIO;

	return count;
}