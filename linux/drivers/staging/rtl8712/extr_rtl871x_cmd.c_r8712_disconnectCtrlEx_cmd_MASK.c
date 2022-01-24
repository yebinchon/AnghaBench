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
typedef  scalar_t__ u32 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
struct DisconnectCtrlEx_param {unsigned char EnableDrvCtrl; unsigned char TryPktCnt; unsigned char TryPktInterval; unsigned int FirstStageTO; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _DisconnectCtrlEx ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct DisconnectCtrlEx_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 struct cmd_obj* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct DisconnectCtrlEx_param* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_priv*,struct cmd_obj*) ; 

void FUNC6(struct _adapter *adapter, u32 enableDrvCtrl,
			u32 tryPktCnt, u32 tryPktInterval, u32 firstStageTO)
{
	struct cmd_obj *ph2c;
	struct DisconnectCtrlEx_param *param;
	struct cmd_priv *pcmdpriv = &adapter->cmdpriv;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return;
	param = FUNC4(sizeof(*param), GFP_ATOMIC);
	if (!param) {
		FUNC2(ph2c);
		return;
	}

	param->EnableDrvCtrl = (unsigned char)enableDrvCtrl;
	param->TryPktCnt = (unsigned char)tryPktCnt;
	param->TryPktInterval = (unsigned char)tryPktInterval;
	param->FirstStageTO = (unsigned int)firstStageTO;

	FUNC1(ph2c, param,
				FUNC0(_DisconnectCtrlEx));
	FUNC5(pcmdpriv, ph2c);
}