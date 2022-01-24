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
struct fsf_qtcb {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct fsf_qtcb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsf_qtcb* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsf_qtcb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  zfcp_fsf_qtcb_cache ; 

__attribute__((used)) static struct fsf_qtcb *FUNC5(mempool_t *pool)
{
	struct fsf_qtcb *qtcb;

	if (FUNC1(pool))
		qtcb = FUNC2(pool, GFP_ATOMIC);
	else
		qtcb = FUNC0(zfcp_fsf_qtcb_cache, GFP_ATOMIC);

	if (FUNC4(!qtcb))
		return NULL;

	FUNC3(qtcb, 0, sizeof(*qtcb));
	return qtcb;
}