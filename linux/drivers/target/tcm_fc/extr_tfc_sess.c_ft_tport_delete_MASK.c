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
struct ft_tport {struct ft_tpg* tpg; struct fc_lport* lport; } ;
struct ft_tpg {int /*<<< orphan*/ * tport; } ;
struct fc_lport {struct ft_tport** prov; int /*<<< orphan*/  service_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FCP_SPPF_TARG_FCN ; 
 size_t FC_TYPE_FCP ; 
 int /*<<< orphan*/  FUNC1 (struct ft_tport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ft_tport*) ; 
 int /*<<< orphan*/  FUNC3 (struct ft_tport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC4(struct ft_tport *tport)
{
	struct fc_lport *lport;
	struct ft_tpg *tpg;

	FUNC2(tport);
	lport = tport->lport;
	lport->service_params &= ~FCP_SPPF_TARG_FCN;
	FUNC0(tport != lport->prov[FC_TYPE_FCP]);
	FUNC1(lport->prov[FC_TYPE_FCP], NULL);

	tpg = tport->tpg;
	if (tpg) {
		tpg->tport = NULL;
		tport->tpg = NULL;
	}
	FUNC3(tport, rcu);
}