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
struct hvc_struct {int dummy; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tty_state; } ;

/* Variables and functions */
 scalar_t__ IUCV_SEVERED ; 
 int /*<<< orphan*/  TTY_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct hvc_iucv_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_iucv_private*) ; 
 struct hvc_iucv_private* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hvc_struct *hp, int id)
{
	struct hvc_iucv_private *priv;

	priv = FUNC2(id);
	if (!priv)
		return;

	FUNC0(priv);

	FUNC3(&priv->lock);
	/* NOTE: If the hangup was scheduled by ourself (from the iucv
	 *	 path_servered callback [IUCV_SEVERED]), we have to clean up
	 *	 our structure and to set state to TTY_CLOSED.
	 *	 If the tty was hung up otherwise (e.g. vhangup()), then we
	 *	 ignore this hangup and keep an established IUCV path open...
	 *	 (...the reason is that we are not able to connect back to the
	 *	 client if we disconnect on hang up) */
	priv->tty_state = TTY_CLOSED;

	if (priv->iucv_state == IUCV_SEVERED)
		FUNC1(priv);
	FUNC4(&priv->lock);
}