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
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
struct SetChannelPlan_param {int ChannelPlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _SetChannelPlan ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct SetChannelPlan_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

void FUNC5(struct _adapter *padapter, int chplan)
{
	struct cmd_obj *ph2c;
	struct SetChannelPlan_param *psetchplanpara;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return;
	psetchplanpara = FUNC3(sizeof(*psetchplanpara), GFP_ATOMIC);
	if (!psetchplanpara) {
		FUNC2(ph2c);
		return;
	}
	FUNC1(ph2c, psetchplanpara,
				FUNC0(_SetChannelPlan));
	psetchplanpara->ChannelPlan = chplan;
	FUNC4(pcmdpriv, ph2c);
}