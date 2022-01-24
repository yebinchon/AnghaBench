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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct altmode {int roles; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  TYPEC_PORT_DRP 130 
#define  TYPEC_PORT_SNK 129 
#define  TYPEC_PORT_SRC 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct altmode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct altmode *alt = FUNC1(FUNC2(dev));
	ssize_t ret;

	switch (alt->roles) {
	case TYPEC_PORT_SRC:
		ret = FUNC0(buf, "source\n");
		break;
	case TYPEC_PORT_SNK:
		ret = FUNC0(buf, "sink\n");
		break;
	case TYPEC_PORT_DRP:
	default:
		ret = FUNC0(buf, "source sink\n");
		break;
	}
	return ret;
}