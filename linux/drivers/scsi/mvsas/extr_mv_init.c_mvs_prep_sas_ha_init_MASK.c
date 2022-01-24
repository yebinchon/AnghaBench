#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {scalar_t__ lldd_ha; TYPE_1__ core; struct asd_sas_port** sas_port; struct asd_sas_port** sas_phy; } ;
struct mvs_prv_info {unsigned short n_host; } ;
struct mvs_chip_info {unsigned short n_host; unsigned short n_phy; } ;
struct asd_sas_port {int dummy; } ;
typedef  struct asd_sas_port asd_sas_phy ;
struct Scsi_Host {int max_channel; int max_cmd_len; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MVS_MAX_DEVICES ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct asd_sas_port** FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_sas_port**) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_ha_struct*,int,int) ; 
 int /*<<< orphan*/  mvs_stt ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *shost,
				const struct mvs_chip_info *chip_info)
{
	int phy_nr, port_nr; unsigned short core_nr;
	struct asd_sas_phy **arr_phy;
	struct asd_sas_port **arr_port;
	struct sas_ha_struct *sha = FUNC0(shost);

	core_nr = chip_info->n_host;
	phy_nr  = core_nr * chip_info->n_phy;
	port_nr = phy_nr;

	FUNC4(sha, 0x00, sizeof(struct sas_ha_struct));
	arr_phy  = FUNC1(phy_nr, sizeof(void *), GFP_KERNEL);
	arr_port = FUNC1(port_nr, sizeof(void *), GFP_KERNEL);
	if (!arr_phy || !arr_port)
		goto exit_free;

	sha->sas_phy = arr_phy;
	sha->sas_port = arr_port;
	sha->core.shost = shost;

	sha->lldd_ha = FUNC3(sizeof(struct mvs_prv_info), GFP_KERNEL);
	if (!sha->lldd_ha)
		goto exit_free;

	((struct mvs_prv_info *)sha->lldd_ha)->n_host = core_nr;

	shost->transportt = mvs_stt;
	shost->max_id = MVS_MAX_DEVICES;
	shost->max_lun = ~0;
	shost->max_channel = 1;
	shost->max_cmd_len = 16;

	return 0;
exit_free:
	FUNC2(arr_phy);
	FUNC2(arr_port);
	return -1;

}