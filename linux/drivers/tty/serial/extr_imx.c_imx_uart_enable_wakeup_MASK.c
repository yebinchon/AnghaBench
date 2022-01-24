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
typedef  int /*<<< orphan*/  u32 ;
struct imx_port {scalar_t__ have_rtscts; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR1_RTSDEN ; 
 int /*<<< orphan*/  UCR3 ; 
 int /*<<< orphan*/  UCR3_AWAKEN ; 
 int /*<<< orphan*/  USR1 ; 
 int /*<<< orphan*/  USR1_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx_port *sport, bool on)
{
	u32 ucr3;

	ucr3 = FUNC0(sport, UCR3);
	if (on) {
		FUNC1(sport, USR1_AWAKE, USR1);
		ucr3 |= UCR3_AWAKEN;
	} else {
		ucr3 &= ~UCR3_AWAKEN;
	}
	FUNC1(sport, ucr3, UCR3);

	if (sport->have_rtscts) {
		u32 ucr1 = FUNC0(sport, UCR1);
		if (on)
			ucr1 |= UCR1_RTSDEN;
		else
			ucr1 &= ~UCR1_RTSDEN;
		FUNC1(sport, ucr1, UCR1);
	}
}