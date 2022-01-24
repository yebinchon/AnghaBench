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
struct fc_lport {int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  retry_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_TYPE_CT ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPORT_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_lport_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct fc_lport *lport)
{
	FUNC0(&lport->retry_work, fc_lport_timeout);
	FUNC4(&lport->lp_mutex);

	FUNC3(lport, LPORT_ST_DISABLED);

	FUNC2(lport, FC_TYPE_FCP);
	FUNC2(lport, FC_TYPE_CT);
	FUNC1(lport, FC_TYPE_FCP);

	return 0;
}