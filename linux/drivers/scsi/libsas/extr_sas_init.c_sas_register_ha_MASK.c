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
struct sas_ha_struct {void* event_q; int /*<<< orphan*/  eh_ata_q; int /*<<< orphan*/  eh_done_q; void* disco_q; int /*<<< orphan*/  dev; int /*<<< orphan*/  event_thres; int /*<<< orphan*/  eh_dev_q; int /*<<< orphan*/  defer_q; int /*<<< orphan*/  eh_wait_q; int /*<<< orphan*/  drain_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  hashed_sas_addr; int /*<<< orphan*/  phy_port_lock; int /*<<< orphan*/  disco_mutex; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SAS_HA_REGISTERED ; 
 int /*<<< orphan*/  SAS_PHY_SHUTDOWN_THRES ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sas_ha_struct*) ; 
 int FUNC9 (struct sas_ha_struct*) ; 
 int FUNC10 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct sas_ha_struct *sas_ha)
{
	char name[64];
	int error = 0;

	FUNC5(&sas_ha->disco_mutex);
	FUNC14(&sas_ha->phy_port_lock);
	FUNC7(sas_ha->hashed_sas_addr, sas_ha->sas_addr);

	FUNC12(SAS_HA_REGISTERED, &sas_ha->state);
	FUNC14(&sas_ha->lock);
	FUNC5(&sas_ha->drain_mutex);
	FUNC4(&sas_ha->eh_wait_q);
	FUNC0(&sas_ha->defer_q);
	FUNC0(&sas_ha->eh_dev_q);

	sas_ha->event_thres = SAS_PHY_SHUTDOWN_THRES;

	error = FUNC9(sas_ha);
	if (error) {
		FUNC6("couldn't register sas phys:%d\n", error);
		return error;
	}

	error = FUNC10(sas_ha);
	if (error) {
		FUNC6("couldn't register sas ports:%d\n", error);
		goto Undo_phys;
	}

	error = FUNC8(sas_ha);
	if (error) {
		FUNC6("couldn't start event thread:%d\n", error);
		goto Undo_ports;
	}

	error = -ENOMEM;
	FUNC13(name, sizeof(name), "%s_event_q", FUNC3(sas_ha->dev));
	sas_ha->event_q = FUNC1(name);
	if (!sas_ha->event_q)
		goto Undo_ports;

	FUNC13(name, sizeof(name), "%s_disco_q", FUNC3(sas_ha->dev));
	sas_ha->disco_q = FUNC1(name);
	if (!sas_ha->disco_q)
		goto Undo_event_q;

	FUNC0(&sas_ha->eh_done_q);
	FUNC0(&sas_ha->eh_ata_q);

	return 0;

Undo_event_q:
	FUNC2(sas_ha->event_q);
Undo_ports:
	FUNC11(sas_ha);
Undo_phys:

	return error;
}