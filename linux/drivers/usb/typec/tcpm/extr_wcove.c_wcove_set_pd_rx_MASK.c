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
struct wcove_typec {int /*<<< orphan*/  regmap; } ;
struct tcpc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBC_PDCFG2 ; 
 int /*<<< orphan*/  USBC_PDCFG2_SOP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wcove_typec* FUNC1 (struct tcpc_dev*) ; 

__attribute__((used)) static int FUNC2(struct tcpc_dev *tcpc, bool on)
{
	struct wcove_typec *wcove = FUNC1(tcpc);

	return FUNC0(wcove->regmap, USBC_PDCFG2,
			    on ? USBC_PDCFG2_SOP : 0);
}