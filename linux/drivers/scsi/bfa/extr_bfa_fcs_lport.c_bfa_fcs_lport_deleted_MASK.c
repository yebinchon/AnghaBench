#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int dummy; } ;
struct bfa_fcs_lport_s {TYPE_2__* fabric; scalar_t__ vport; TYPE_1__* fcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  wc; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  BFA_LPORT_AEN_DELETE ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_lport_s *port)
{
	struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
	char    lpwwn_buf[BFA_STRING_32];

	FUNC5(lpwwn_buf, FUNC2(port));
	FUNC0(KERN_INFO, bfad, bfa_log_level,
		"Logical port deleted: WWN = %s Role = %s\n",
		lpwwn_buf, "Initiator");
	FUNC1(port, BFA_LPORT_AEN_DELETE);

	/* Base port will be deleted by the OS driver */
	if (port->vport)
		FUNC3(port->vport);
	else
		FUNC4(&port->fabric->wc);
}