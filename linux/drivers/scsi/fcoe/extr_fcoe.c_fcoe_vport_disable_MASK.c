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
struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {int /*<<< orphan*/  boot_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC4(struct fc_vport *vport, bool disable)
{
	struct fc_lport *lport = vport->dd_data;

	if (disable) {
		FUNC2(vport, FC_VPORT_DISABLED);
		FUNC1(lport);
	} else {
		lport->boot_time = jiffies;
		FUNC0(lport);
		FUNC3(lport);
	}

	return 0;
}