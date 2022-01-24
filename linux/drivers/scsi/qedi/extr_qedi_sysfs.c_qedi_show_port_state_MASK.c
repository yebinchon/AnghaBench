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
struct qedi_ctx {int /*<<< orphan*/  link_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ QEDI_LINK_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct qedi_ctx* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct qedi_ctx *qedi = FUNC1(dev);

	if (FUNC0(&qedi->link_state) == QEDI_LINK_UP)
		return FUNC2(buf, "Online\n");
	else
		return FUNC2(buf, "Linkdown\n");
}