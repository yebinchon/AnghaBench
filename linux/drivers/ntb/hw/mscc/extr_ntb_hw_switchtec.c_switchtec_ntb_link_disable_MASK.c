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
struct switchtec_ntb {TYPE_2__* self_shared; TYPE_1__* stdev; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ link_sta; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_MESSAGE ; 
 int /*<<< orphan*/  MSG_LINK_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct switchtec_ntb* FUNC1 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC3 (struct switchtec_ntb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ntb_dev *ntb)
{
	struct switchtec_ntb *sndev = FUNC1(ntb);

	FUNC0(&sndev->stdev->dev, "disabling link\n");

	sndev->self_shared->link_sta = 0;
	FUNC3(sndev, LINK_MESSAGE, MSG_LINK_DOWN);

	FUNC2(sndev);

	return 0;
}