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
struct hvsi_priv {int /*<<< orphan*/  tty; int /*<<< orphan*/  termno; } ;
struct hvc_struct {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hvsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hvsi_priv *pv, struct hvc_struct *hp)
{
	FUNC1("HVSI@%x: open !\n", pv->termno);

	/* Keep track of the tty data structure */
	pv->tty = FUNC2(&hp->port);

	FUNC0(pv);

	return 0;
}