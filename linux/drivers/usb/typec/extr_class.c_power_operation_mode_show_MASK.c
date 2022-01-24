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
struct typec_port {size_t pwr_opmode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct typec_port* FUNC1 (struct device*) ; 
 char** typec_pwr_opmodes ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct typec_port *port = FUNC1(dev);

	return FUNC0(buf, "%s\n", typec_pwr_opmodes[port->pwr_opmode]);
}