#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ntb_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*) ; 
 struct idt_ntb_dev* FUNC2 (struct ntb_dev*) ; 

__attribute__((used)) static int FUNC3(struct ntb_dev *ntb)
{
	struct idt_ntb_dev *ndev = FUNC2(ntb);

	/* Just disable the local NTB link */
	FUNC1(ndev);

	FUNC0(&ndev->ntb.pdev->dev, "Local NTB link disabled");

	return 0;
}