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
struct setdatarate_parm {int mac_id; int /*<<< orphan*/  datarates; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NumRates ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _SetDataRate ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct setdatarate_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC5 (int) ; 

u8 FUNC6(struct adapter *padapter, u8 *rateset)
{
	struct cmd_obj *ph2c;
	struct setdatarate_parm *pbsetdataratepara;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	u8 res = _SUCCESS;

	ph2c = FUNC5(sizeof(struct cmd_obj));
	if (ph2c == NULL) {
		res = _FAIL;
		goto exit;
	}

	pbsetdataratepara = FUNC5(sizeof(struct setdatarate_parm));
	if (pbsetdataratepara == NULL) {
		FUNC2(ph2c);
		res = _FAIL;
		goto exit;
	}

	FUNC1(ph2c, pbsetdataratepara, FUNC0(_SetDataRate));
	pbsetdataratepara->mac_id = 5;
	FUNC3(pbsetdataratepara->datarates, rateset, NumRates);

	res = FUNC4(pcmdpriv, ph2c);
exit:
	return res;
}