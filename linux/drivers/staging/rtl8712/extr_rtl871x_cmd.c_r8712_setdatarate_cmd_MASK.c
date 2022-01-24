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
struct _adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NumRates ; 
 int /*<<< orphan*/  _SetDataRate ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct setdatarate_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_priv*,struct cmd_obj*) ; 

int FUNC6(struct _adapter *padapter, u8 *rateset)
{
	struct cmd_obj		*ph2c;
	struct setdatarate_parm	*pbsetdataratepara;
	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return -ENOMEM;
	pbsetdataratepara = FUNC3(sizeof(*pbsetdataratepara), GFP_ATOMIC);
	if (!pbsetdataratepara) {
		FUNC2(ph2c);
		return -ENOMEM;
	}
	FUNC1(ph2c, pbsetdataratepara,
				   FUNC0(_SetDataRate));
	pbsetdataratepara->mac_id = 5;
	FUNC4(pbsetdataratepara->datarates, rateset, NumRates);
	FUNC5(pcmdpriv, ph2c);
	return 0;
}