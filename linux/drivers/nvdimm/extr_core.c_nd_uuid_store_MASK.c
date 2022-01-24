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
typedef  int /*<<< orphan*/  uuid ;
typedef  int /*<<< orphan*/  u8 ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,char const*,size_t) ; 

int FUNC3(struct device *dev, u8 **uuid_out, const char *buf,
		size_t len)
{
	u8 uuid[16];
	int rc;

	if (dev->driver)
		return -EBUSY;

	rc = FUNC2(dev, uuid, buf, len);
	if (rc)
		return rc;

	FUNC0(*uuid_out);
	*uuid_out = FUNC1(uuid, sizeof(uuid), GFP_KERNEL);
	if (!(*uuid_out))
		return -ENOMEM;

	return 0;
}