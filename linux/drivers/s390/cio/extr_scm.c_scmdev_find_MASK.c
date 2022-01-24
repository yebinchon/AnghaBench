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
struct scm_device {int dummy; } ;
struct sale {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sale*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_address ; 
 int /*<<< orphan*/  scm_bus_type ; 
 struct scm_device* FUNC1 (struct device*) ; 

__attribute__((used)) static struct scm_device *FUNC2(struct sale *sale)
{
	struct device *dev;

	dev = FUNC0(&scm_bus_type, NULL, sale, check_address);

	return dev ? FUNC1(dev) : NULL;
}