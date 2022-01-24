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
struct hvc_iucv_private {int /*<<< orphan*/  srv_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 struct hvc_iucv_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct hvc_iucv_private *priv = FUNC1(dev);
	size_t len;

	len = sizeof(priv->srv_name);
	FUNC2(buf, priv->srv_name, len);
	FUNC0(buf, len);
	buf[len++] = '\n';
	return len;
}