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
struct switchtec_ntb {int /*<<< orphan*/  message_irq; int /*<<< orphan*/  doorbell_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct switchtec_ntb*) ; 

__attribute__((used)) static void FUNC1(struct switchtec_ntb *sndev)
{
	FUNC0(sndev->doorbell_irq, sndev);
	FUNC0(sndev->message_irq, sndev);
}