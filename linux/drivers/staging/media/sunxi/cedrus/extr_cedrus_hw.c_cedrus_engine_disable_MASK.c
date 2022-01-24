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
struct cedrus_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VE_MODE ; 
 int /*<<< orphan*/  VE_MODE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct cedrus_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct cedrus_dev *dev)
{
	FUNC0(dev, VE_MODE, VE_MODE_DISABLED);
}