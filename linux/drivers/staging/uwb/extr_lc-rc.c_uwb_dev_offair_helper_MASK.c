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
struct uwb_dev {int /*<<< orphan*/  rc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uwb_dev*,int /*<<< orphan*/ ) ; 
 struct uwb_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *priv)
{
	struct uwb_dev *uwb_dev = FUNC1(dev);

	return FUNC0(uwb_dev, uwb_dev->rc);
}