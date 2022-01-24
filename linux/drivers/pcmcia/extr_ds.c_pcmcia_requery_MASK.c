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
struct pcmcia_socket {int state; scalar_t__ functions; int pcmcia_pfc; int /*<<< orphan*/  dev; int /*<<< orphan*/  ops_mutex; scalar_t__ fake_cis; } ;
struct TYPE_3__ {int nfn; } ;
typedef  TYPE_1__ cistpl_longlink_mfc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_FN_ALL ; 
 int /*<<< orphan*/  CISTPL_LONGLINK_MFC ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  pcmcia_bus_type ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcmcia_requery_callback ; 

__attribute__((used)) static void FUNC9(struct pcmcia_socket *s)
{
	int has_pfc;

	if (!(s->state & SOCKET_PRESENT))
		return;

	if (s->functions == 0) {
		FUNC6(s);
		return;
	}

	/* some device information might have changed because of a CIS
	 * update or because we can finally read it correctly... so
	 * determine it again, overwriting old values if necessary. */
	FUNC0(&pcmcia_bus_type, NULL, NULL, pcmcia_requery_callback);

	/* if the CIS changed, we need to check whether the number of
	 * functions changed. */
	if (s->fake_cis) {
		int old_funcs, new_funcs;
		cistpl_longlink_mfc_t mfc;

		/* does this cis override add or remove functions? */
		old_funcs = s->functions;

		if (!FUNC5(s, BIND_FN_ALL, CISTPL_LONGLINK_MFC,
					&mfc))
			new_funcs = mfc.nfn;
		else
			new_funcs = 1;
		if (old_funcs != new_funcs) {
			/* we need to re-start */
			FUNC7(s, NULL);
			s->functions = 0;
			FUNC6(s);
		}
	}

	/* If the PCMCIA device consists of two pseudo devices,
	 * call pcmcia_device_add() -- which will fail if both
	 * devices are already registered. */
	FUNC3(&s->ops_mutex);
	has_pfc = s->pcmcia_pfc;
	FUNC4(&s->ops_mutex);
	if (has_pfc)
		FUNC8(s, 0);

	/* we re-scan all devices, not just the ones connected to this
	 * socket. This does not matter, though. */
	if (FUNC1(&pcmcia_bus_type))
		FUNC2(&s->dev, "rescanning the bus failed\n");
}