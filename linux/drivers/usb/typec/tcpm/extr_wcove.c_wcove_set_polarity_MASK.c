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
struct wcove_typec {int dummy; } ;
struct tcpc_dev {int dummy; } ;
typedef  enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;

/* Variables and functions */
 int /*<<< orphan*/  WCOVE_FUNC_ORIENTATION ; 
 struct wcove_typec* FUNC0 (struct tcpc_dev*) ; 
 int FUNC1 (struct wcove_typec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct tcpc_dev *tcpc, enum typec_cc_polarity pol)
{
	struct wcove_typec *wcove = FUNC0(tcpc);

	return FUNC1(wcove, WCOVE_FUNC_ORIENTATION, pol);
}