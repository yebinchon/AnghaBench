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
struct zfcp_dbf_scsi {int dummy; } ;
struct zfcp_dbf_san {int dummy; } ;
struct zfcp_dbf_rec {int dummy; } ;
struct zfcp_dbf_pay {int dummy; } ;
struct zfcp_dbf_hba {int dummy; } ;
struct zfcp_dbf {void* scsi; void* san; void* pay; void* hba; void* rec; int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  scsi_lock; int /*<<< orphan*/  san_lock; int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  pay_lock; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DEBUG_MAX_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int dbfsize ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_dbf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 void* FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_dbf*) ; 

int FUNC6(struct zfcp_adapter *adapter)
{
	char name[DEBUG_MAX_NAME_LEN];
	struct zfcp_dbf *dbf;

	dbf = FUNC1(sizeof(struct zfcp_dbf), GFP_KERNEL);
	if (!dbf)
		return -ENOMEM;

	FUNC2(&dbf->pay_lock);
	FUNC2(&dbf->hba_lock);
	FUNC2(&dbf->san_lock);
	FUNC2(&dbf->scsi_lock);
	FUNC2(&dbf->rec_lock);

	/* debug feature area which records recovery activity */
	FUNC3(name, "zfcp_%s_rec", FUNC0(&adapter->ccw_device->dev));
	dbf->rec = FUNC4(name, dbfsize, sizeof(struct zfcp_dbf_rec));
	if (!dbf->rec)
		goto err_out;

	/* debug feature area which records HBA (FSF and QDIO) conditions */
	FUNC3(name, "zfcp_%s_hba", FUNC0(&adapter->ccw_device->dev));
	dbf->hba = FUNC4(name, dbfsize, sizeof(struct zfcp_dbf_hba));
	if (!dbf->hba)
		goto err_out;

	/* debug feature area which records payload info */
	FUNC3(name, "zfcp_%s_pay", FUNC0(&adapter->ccw_device->dev));
	dbf->pay = FUNC4(name, dbfsize * 2, sizeof(struct zfcp_dbf_pay));
	if (!dbf->pay)
		goto err_out;

	/* debug feature area which records SAN command failures and recovery */
	FUNC3(name, "zfcp_%s_san", FUNC0(&adapter->ccw_device->dev));
	dbf->san = FUNC4(name, dbfsize, sizeof(struct zfcp_dbf_san));
	if (!dbf->san)
		goto err_out;

	/* debug feature area which records SCSI command failures and recovery */
	FUNC3(name, "zfcp_%s_scsi", FUNC0(&adapter->ccw_device->dev));
	dbf->scsi = FUNC4(name, dbfsize, sizeof(struct zfcp_dbf_scsi));
	if (!dbf->scsi)
		goto err_out;

	adapter->dbf = dbf;

	return 0;
err_out:
	FUNC5(dbf);
	return -ENOMEM;
}