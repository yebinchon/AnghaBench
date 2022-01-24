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
struct dvobj_priv {int /*<<< orphan*/  setbw_mutex; int /*<<< orphan*/  setch_mutex; int /*<<< orphan*/  h2c_fwcmd_mutex; int /*<<< orphan*/  hw_init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct dvobj_priv *pdvobj)
{
	if (!pdvobj)
		return;

	FUNC1(&pdvobj->hw_init_mutex);
	FUNC1(&pdvobj->h2c_fwcmd_mutex);
	FUNC1(&pdvobj->setch_mutex);
	FUNC1(&pdvobj->setbw_mutex);

	FUNC0(pdvobj);
}