#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usbhsg_uep {TYPE_1__* pipe; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_mod {int /*<<< orphan*/  irq_ctrl_stage; int /*<<< orphan*/  irq_dev_state; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct usbhsg_uep* mod_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSG_STATUS_REGISTERD ; 
 int /*<<< orphan*/  USBHSG_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 TYPE_1__* FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*,struct usbhs_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,unsigned long) ; 
 struct usbhs_mod* FUNC5 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  usbhsg_dma_map_ctrl ; 
 struct usbhsg_uep* FUNC11 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  usbhsg_irq_ctrl_stage ; 
 int /*<<< orphan*/  usbhsg_irq_dev_state ; 
 struct usbhsg_gpriv* FUNC12 (struct usbhs_priv*) ; 
 scalar_t__ FUNC13 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC16(struct usbhs_priv *priv, u32 status)
{
	struct usbhsg_gpriv *gpriv = FUNC12(priv);
	struct usbhsg_uep *dcp = FUNC11(gpriv);
	struct usbhs_mod *mod = FUNC5(priv);
	struct device *dev = FUNC8(priv);
	unsigned long flags;
	int ret = 0;

	/********************  spin lock ********************/
	FUNC4(priv, flags);

	FUNC14(gpriv, status);
	if (!(FUNC13(gpriv, USBHSG_STATUS_STARTED) &&
	      FUNC13(gpriv, USBHSG_STATUS_REGISTERD)))
		ret = -1; /* not ready */

	FUNC10(priv, flags);
	/********************  spin unlock ********************/

	if (ret < 0)
		return 0; /* not ready is not error */

	/*
	 * enable interrupt and systems if ready
	 */
	FUNC0(dev, "start gadget\n");

	/*
	 * pipe initialize and enable DCP
	 */
	FUNC2(priv);
	FUNC7(priv,
			usbhsg_dma_map_ctrl);

	/* dcp init instead of usbhsg_ep_enable() */
	dcp->pipe		= FUNC1(priv);
	dcp->pipe->mod_private	= dcp;
	FUNC6(dcp->pipe, 0, 0, 64);

	/*
	 * system config enble
	 * - HI speed
	 * - function
	 * - usb module
	 */
	FUNC9(priv, 1);
	FUNC15(priv);

	/*
	 * enable irq callback
	 */
	mod->irq_dev_state	= usbhsg_irq_dev_state;
	mod->irq_ctrl_stage	= usbhsg_irq_ctrl_stage;
	FUNC3(priv, mod);

	return 0;
}