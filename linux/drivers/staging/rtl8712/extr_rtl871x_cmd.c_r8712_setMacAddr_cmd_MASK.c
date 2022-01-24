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
typedef  int /*<<< orphan*/  u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
struct SetMacAddr_param {int /*<<< orphan*/  MacAddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _SetMacAddress_CMD_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct SetMacAddr_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

void FUNC5(struct _adapter *padapter, u8 *mac_addr)
{
	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
	struct cmd_obj *ph2c;
	struct SetMacAddr_param	*psetMacAddr_para;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return;
	psetMacAddr_para = FUNC3(sizeof(*psetMacAddr_para), GFP_ATOMIC);
	if (!psetMacAddr_para) {
		FUNC2(ph2c);
		return;
	}
	FUNC1(ph2c, psetMacAddr_para,
				   _SetMacAddress_CMD_);
	FUNC0(psetMacAddr_para->MacAddr, mac_addr);
	FUNC4(pcmdpriv, ph2c);
}