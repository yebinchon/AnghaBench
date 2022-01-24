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
struct hvsi_priv {int opened; int /*<<< orphan*/  termno; scalar_t__ established; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hvsi_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct hvsi_priv *pv)
{
	int timeout;

	FUNC6("HVSI@%x: Establishing...\n", pv->termno);

	/* Try for up to 200ms, there can be a packet to
	 * start the process waiting for us...
	 */
	for (timeout = 0; timeout < 20; timeout++) {
		if (pv->established)
			goto established;
		if (!FUNC0(pv))
			FUNC5(10);
	}

	/* Failed, send a close connection packet just
	 * in case
	 */
	FUNC6("HVSI@%x:   ... sending close\n", pv->termno);

	FUNC1(pv);

	/* Then restart handshake */

	FUNC6("HVSI@%x:   ... restarting handshake\n", pv->termno);

	FUNC2(pv);

	FUNC6("HVSI@%x:   ... waiting handshake\n", pv->termno);

	/* Try for up to 400ms */
	for (timeout = 0; timeout < 40; timeout++) {
		if (pv->established)
			goto established;
		if (!FUNC0(pv))
			FUNC5(10);
	}

	if (!pv->established) {
		FUNC6("HVSI@%x: Timeout handshaking, giving up !\n",
			 pv->termno);
		return;
	}
 established:
	/* Query modem control lines */

	FUNC6("HVSI@%x:   ... established, reading mctrl\n", pv->termno);

	FUNC3(pv);

	/* Set our own DTR */

	FUNC6("HVSI@%x:   ... setting mctrl\n", pv->termno);

	FUNC4(pv, 1);

	/* Set the opened flag so reads are allowed */
	FUNC7();
	pv->opened = 1;
}