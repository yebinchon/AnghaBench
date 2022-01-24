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
struct evt_priv {void* c2h_queue; scalar_t__ c2h_wk_alive; int /*<<< orphan*/  c2h_wk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_cmd_c_ ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 

void FUNC6(struct	evt_priv *pevtpriv)
{
	FUNC0(_module_rtl871x_cmd_c_, _drv_info_, ("+_rtw_free_evt_priv\n"));

	FUNC1(&pevtpriv->c2h_wk);
	while (pevtpriv->c2h_wk_alive)
		FUNC3(10);

	while (!FUNC4(pevtpriv->c2h_queue)) {
		void *c2h = FUNC5(pevtpriv->c2h_queue);
		if (c2h != NULL && c2h != (void *)pevtpriv) {
			FUNC2(c2h);
		}
	}
	FUNC2(pevtpriv->c2h_queue);

	FUNC0(_module_rtl871x_cmd_c_, _drv_info_, ("-_rtw_free_evt_priv\n"));
}