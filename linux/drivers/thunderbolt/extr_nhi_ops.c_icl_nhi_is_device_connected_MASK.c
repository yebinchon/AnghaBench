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
struct tb_nhi {int /*<<< orphan*/  pdev; } ;
struct tb {TYPE_1__* root_switch; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  check_for_device ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tb* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct tb_nhi *nhi)
{
	struct tb *tb = FUNC1(nhi->pdev);
	int ret;

	ret = FUNC0(&tb->root_switch->dev, NULL,
				    check_for_device);
	return ret > 0;
}