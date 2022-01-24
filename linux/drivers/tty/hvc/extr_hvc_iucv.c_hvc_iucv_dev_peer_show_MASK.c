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
typedef  int /*<<< orphan*/  vmid ;
struct hvc_iucv_private {scalar_t__ iucv_state; int /*<<< orphan*/  lock; scalar_t__ info_path; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  ipuser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ IUCV_CONNECTED ; 
 struct hvc_iucv_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	struct hvc_iucv_private *priv = FUNC1(dev);
	char vmid[9], ipuser[9];

	FUNC3(vmid, 0, sizeof(vmid));
	FUNC3(ipuser, 0, sizeof(ipuser));

	FUNC4(&priv->lock);
	if (priv->iucv_state == IUCV_CONNECTED) {
		FUNC2(vmid, priv->info_path, 8);
		FUNC2(ipuser, priv->info_path + 8, 8);
	}
	FUNC5(&priv->lock);
	FUNC0(ipuser, 8);

	return FUNC6(buf, "%s:%s\n", vmid, ipuser);
}