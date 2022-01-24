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
struct hvterm_priv {int /*<<< orphan*/  hvsi; int /*<<< orphan*/  termno; } ;
struct hvc_struct {size_t vtermno; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct hvterm_priv** hvterm_privs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hvc_struct *hp, unsigned int set,
				unsigned int clear)
{
	struct hvterm_priv *pv = hvterm_privs[hp->vtermno];

	FUNC1("HVSI@%x: Set modem control, set=%x,clr=%x\n",
		 pv->termno, set, clear);

	if (set & TIOCM_DTR)
		FUNC0(&pv->hvsi, 1);
	else if (clear & TIOCM_DTR)
		FUNC0(&pv->hvsi, 0);

	return 0;
}