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
struct isp1760_qh {int slot; int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  qh_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct isp1760_qh* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qh_cachep ; 

__attribute__((used)) static struct isp1760_qh *FUNC2(gfp_t flags)
{
	struct isp1760_qh *qh;

	qh = FUNC1(qh_cachep, flags);
	if (!qh)
		return NULL;

	FUNC0(&qh->qh_list);
	FUNC0(&qh->qtd_list);
	qh->slot = -1;

	return qh;
}