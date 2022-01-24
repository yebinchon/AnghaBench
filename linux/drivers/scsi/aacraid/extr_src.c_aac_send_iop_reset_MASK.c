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
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IDR; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOP_SRC_RESET_MASK ; 
 TYPE_1__ MUnit ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct aac_dev *dev)
{
	FUNC1(dev);

	FUNC2(dev);

	FUNC3(dev);

	FUNC0(dev);

	FUNC5(dev, MUnit.IDR, IOP_SRC_RESET_MASK);

	FUNC4(5000);
}