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
typedef  int /*<<< orphan*/  u32 ;
struct writeRF_parm {int /*<<< orphan*/  value; int /*<<< orphan*/  offset; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _SetRFReg ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct writeRF_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

int FUNC5(struct _adapter  *padapter, u8 offset, u32 val)
{
	struct cmd_obj *ph2c;
	struct writeRF_parm *pwriterfparm;
	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return -ENOMEM;
	pwriterfparm = FUNC3(sizeof(*pwriterfparm), GFP_ATOMIC);
	if (!pwriterfparm) {
		FUNC2(ph2c);
		return -ENOMEM;
	}
	FUNC1(ph2c, pwriterfparm, FUNC0(_SetRFReg));
	pwriterfparm->offset = offset;
	pwriterfparm->value = val;
	FUNC4(pcmdpriv, ph2c);
	return 0;
}