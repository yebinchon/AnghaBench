#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vio_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct vio_dev {scalar_t__ unit_address; TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct hvterm_priv {scalar_t__ termno; int /*<<< orphan*/  hvsi; int /*<<< orphan*/  buf_lock; scalar_t__ proto; } ;
struct hvc_struct {scalar_t__ index; } ;
struct hv_ops {int dummy; } ;
typedef  scalar_t__ hv_protocol_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HV_PROTOCOL_HVSI ; 
 scalar_t__ HV_PROTOCOL_RAW ; 
 scalar_t__ FUNC0 (struct hvc_struct*) ; 
 int MAX_NR_HVC_CONSOLES ; 
 int /*<<< orphan*/  MAX_VIO_PUT_CHARS ; 
 int FUNC1 (struct hvc_struct*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct hvc_struct*) ; 
 struct hvc_struct* FUNC3 (int,int /*<<< orphan*/ ,struct hv_ops const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hvc_get_chars ; 
 int /*<<< orphan*/  hvc_put_chars ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct hv_ops hvterm_hvsi_ops ; 
 struct hvterm_priv hvterm_priv0 ; 
 struct hvterm_priv** hvterm_privs ; 
 struct hv_ops hvterm_raw_ops ; 
 struct hvterm_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udbg_getc ; 
 int /*<<< orphan*/  udbg_getc_poll ; 
 int /*<<< orphan*/  udbg_hvc_getc ; 
 int /*<<< orphan*/  udbg_hvc_getc_poll ; 
 scalar_t__ udbg_hvc_putc ; 
 scalar_t__ udbg_putc ; 

__attribute__((used)) static int FUNC10(struct vio_dev *vdev,
				   const struct vio_device_id *id)
{
	const struct hv_ops *ops;
	struct hvc_struct *hp;
	struct hvterm_priv *pv;
	hv_protocol_t proto;
	int i, termno = -1;

	/* probed with invalid parameters. */
	if (!vdev || !id)
		return -EPERM;

	if (FUNC6(vdev->dev.of_node, "hvterm1")) {
		proto = HV_PROTOCOL_RAW;
		ops = &hvterm_raw_ops;
	} else if (FUNC6(vdev->dev.of_node, "hvterm-protocol")) {
		proto = HV_PROTOCOL_HVSI;
		ops = &hvterm_hvsi_ops;
	} else {
		FUNC8("hvc_vio: Unknown protocol for %pOF\n", vdev->dev.of_node);
		return -ENXIO;
	}

	FUNC7("hvc_vio_probe() device %pOF, using %s protocol\n",
		 vdev->dev.of_node,
		 proto == HV_PROTOCOL_RAW ? "raw" : "hvsi");

	/* Is it our boot one ? */
	if (hvterm_privs[0] == &hvterm_priv0 &&
	    vdev->unit_address == hvterm_priv0.termno) {
		pv = hvterm_privs[0];
		termno = 0;
		FUNC7("->boot console, using termno 0\n");
	}
	/* nope, allocate a new one */
	else {
		for (i = 0; i < MAX_NR_HVC_CONSOLES && termno < 0; i++)
			if (!hvterm_privs[i])
				termno = i;
		FUNC7("->non-boot console, using termno %d\n", termno);
		if (termno < 0)
			return -ENODEV;
		pv = FUNC5(sizeof(struct hvterm_priv), GFP_KERNEL);
		if (!pv)
			return -ENOMEM;
		pv->termno = vdev->unit_address;
		pv->proto = proto;
		FUNC9(&pv->buf_lock);
		hvterm_privs[termno] = pv;
		FUNC4(&pv->hvsi, hvc_get_chars, hvc_put_chars,
			     pv->termno, 0);
	}

	hp = FUNC3(termno, vdev->irq, ops, MAX_VIO_PUT_CHARS);
	if (FUNC0(hp))
		return FUNC1(hp);
	FUNC2(&vdev->dev, hp);

	/* register udbg if it's not there already for console 0 */
	if (hp->index == 0 && !udbg_putc) {
		udbg_putc = udbg_hvc_putc;
		udbg_getc = udbg_hvc_getc;
		udbg_getc_poll = udbg_hvc_getc_poll;
	}

	return 0;
}