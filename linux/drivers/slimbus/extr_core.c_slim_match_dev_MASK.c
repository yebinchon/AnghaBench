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
struct slim_eaddr {int dummy; } ;
struct slim_device {int /*<<< orphan*/  e_addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct slim_eaddr*) ; 
 struct slim_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct slim_eaddr *e_addr = data;
	struct slim_device *sbdev = FUNC1(dev);

	return FUNC0(&sbdev->e_addr, e_addr);
}