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
typedef  int u8 ;
struct setopmode_parm {int mode; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int mode; } ;
struct adapter {struct cmd_priv cmdpriv; } ;
typedef  enum ndis_802_11_network_infra { ____Placeholder_ndis_802_11_network_infra } ndis_802_11_network_infra ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  _SetOpMode_CMD_ ; 
 int /*<<< orphan*/  FUNC0 (struct setopmode_parm*,struct setopmode_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct setopmode_parm*) ; 
 struct setopmode_parm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cmd_priv*,struct setopmode_parm*) ; 

u8 FUNC4(struct adapter  *padapter, enum ndis_802_11_network_infra networktype)
{
	struct	cmd_obj *ph2c;
	struct	setopmode_parm *psetop;

	struct	cmd_priv   *pcmdpriv = &padapter->cmdpriv;

	ph2c = FUNC2(sizeof(*ph2c), GFP_KERNEL);
	psetop = FUNC2(sizeof(*psetop), GFP_KERNEL);
	if (!ph2c || !psetop) {
		FUNC1(ph2c);
		FUNC1(psetop);
		return false;
	}

	FUNC0(ph2c, psetop, _SetOpMode_CMD_);
	psetop->mode = (u8)networktype;

	return FUNC3(pcmdpriv, ph2c);
}