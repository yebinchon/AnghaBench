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
struct xenfb_info {int /*<<< orphan*/  fb_info; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct xenfb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xenbus_device*,struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenfb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xenbus_device *dev)
{
	struct xenfb_info *info = FUNC0(&dev->dev);

	FUNC2(info);
	FUNC3(info, info->fb_info);
	return FUNC1(dev, info);
}