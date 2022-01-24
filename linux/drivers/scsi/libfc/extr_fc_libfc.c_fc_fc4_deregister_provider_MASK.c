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
struct fc4_prov {scalar_t__ recv; } ;
typedef  enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FC_FC4_PROV_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fc_active_prov ; 
 int /*<<< orphan*/ * fc_passive_prov ; 
 int /*<<< orphan*/  fc_prov_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(enum fc_fh_type type, struct fc4_prov *prov)
{
	FUNC0(type >= FC_FC4_PROV_SIZE);
	FUNC2(&fc_prov_mutex);
	if (prov->recv)
		FUNC1(fc_passive_prov[type], NULL);
	else
		FUNC1(fc_active_prov[type], NULL);
	FUNC3(&fc_prov_mutex);
	FUNC4();
}