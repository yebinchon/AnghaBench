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
struct aac_dev {scalar_t__ msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_ENABLE_INTX ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct aac_dev *dev)
{
	if (dev->msi_enabled) {
		FUNC0(dev, AAC_ENABLE_INTX);
		dev->msi_enabled = 0;
		FUNC1(5000); /* Delay 5 seconds */
	}
}