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
typedef  int /*<<< orphan*/  u16 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  curr_ch; } ;
struct _adapter {TYPE_1__ mppriv; struct cmd_priv cmdpriv; } ;
struct SetChannel_parm {int /*<<< orphan*/  curr_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _SetChannel ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct SetChannel_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

void FUNC5(struct _adapter *pAdapter)
{
	struct cmd_priv *pcmdpriv = &pAdapter->cmdpriv;
	struct cmd_obj *pcmd = NULL;
	struct SetChannel_parm *pparm = NULL;
	u16 code = FUNC0(_SetChannel);

	pcmd = FUNC3(sizeof(*pcmd), GFP_ATOMIC);
	if (!pcmd)
		return;
	pparm = FUNC3(sizeof(*pparm), GFP_ATOMIC);
	if (!pparm) {
		FUNC2(pcmd);
		return;
	}
	pparm->curr_ch = pAdapter->mppriv.curr_ch;
	FUNC1(pcmd, pparm, code);
	FUNC4(pcmdpriv, pcmd);
}