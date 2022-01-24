#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aac_dev {TYPE_1__* fsa_dev; } ;
struct TYPE_2__ {int valid; } ;

/* Variables and functions */
 int FUNC0 (struct aac_dev*,int,int) ; 
 scalar_t__ FUNC1 (struct aac_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct aac_dev *dev, int bus, int target)
{
	if (FUNC1(dev, bus, target))
		return dev->fsa_dev[target].valid;
	else
		return FUNC0(dev, bus, target);
}