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
struct ft_tport {int dummy; } ;
struct fc_lport {struct ft_tport** prov; } ;

/* Variables and functions */
 size_t FC_TYPE_FCP ; 
 int /*<<< orphan*/  ft_lport_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ft_tport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fc_lport *lport, void *arg)
{
	struct ft_tport *tport;

	FUNC1(&ft_lport_lock);
	tport = lport->prov[FC_TYPE_FCP];
	if (tport)
		FUNC0(tport);
	FUNC2(&ft_lport_lock);
}