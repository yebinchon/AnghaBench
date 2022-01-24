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
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ChkBMCSleepq ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_priv*,struct cmd_obj*) ; 
 struct cmd_obj* FUNC3 (int) ; 

u8 FUNC4(struct adapter *padapter)
{
	struct cmd_obj *ph2c;
	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
	u8 res = _SUCCESS;

	ph2c = FUNC3(sizeof(struct cmd_obj));
	if (ph2c == NULL) {
		res = _FAIL;
		goto exit;
	}

	FUNC1(ph2c, FUNC0(_ChkBMCSleepq));

	res = FUNC2(pcmdpriv, ph2c);

exit:
	return res;
}