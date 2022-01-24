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
struct hvc_iucv_private {int iucv_state; int tty_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct hvc_iucv_private* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct hvc_iucv_private *priv = FUNC0(dev);
	return FUNC1(buf, "%u:%u\n", priv->iucv_state, priv->tty_state);
}