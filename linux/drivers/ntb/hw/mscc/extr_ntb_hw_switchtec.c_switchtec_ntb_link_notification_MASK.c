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
struct switchtec_ntb {int dummy; } ;
struct switchtec_dev {struct switchtec_ntb* sndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_CHECK_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct switchtec_ntb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct switchtec_dev *stdev)
{
	struct switchtec_ntb *sndev = stdev->sndev;

	FUNC0(sndev, MSG_CHECK_LINK);
}