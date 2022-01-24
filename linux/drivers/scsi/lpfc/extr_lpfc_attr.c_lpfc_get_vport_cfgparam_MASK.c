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
struct lpfc_vport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  lpfc_devloss_tmo ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_discovery_threads ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_da_id ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_class ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_first_burst_size ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_log_verbose ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_lun_queue_depth ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_max_luns ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_max_scsicmpl_time ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nodev_tmo ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_peer_port_login ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_restrict_login ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_scan_down ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_tgt_queue_depth ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_use_adisc ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 

void
FUNC15(struct lpfc_vport *vport)
{
	FUNC5(vport, lpfc_log_verbose);
	FUNC6(vport, lpfc_lun_queue_depth);
	FUNC13(vport, lpfc_tgt_queue_depth);
	FUNC0(vport, lpfc_devloss_tmo);
	FUNC9(vport, lpfc_nodev_tmo);
	FUNC10(vport, lpfc_peer_port_login);
	FUNC11(vport, lpfc_restrict_login);
	FUNC3(vport, lpfc_fcp_class);
	FUNC14(vport, lpfc_use_adisc);
	FUNC4(vport, lpfc_first_burst_size);
	FUNC8(vport, lpfc_max_scsicmpl_time);
	FUNC1(vport, lpfc_discovery_threads);
	FUNC7(vport, lpfc_max_luns);
	FUNC12(vport, lpfc_scan_down);
	FUNC2(vport, lpfc_enable_da_id);
	return;
}