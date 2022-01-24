#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdebug_dev_info {scalar_t__ lun; int channel; int target; int /*<<< orphan*/  lu_name; TYPE_3__* sdbg_host; } ;
struct scsi_cmnd {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__* shost; } ;
struct TYPE_5__ {int host_no; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int DID_REQUEUE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SDEBUG_LONG_INQ_SZ ; 
 scalar_t__ SDEBUG_LUN_0_VAL ; 
 int SDEBUG_MAX_INQ_ARR_SZ ; 
 int /*<<< orphan*/  SDEB_IN_CDB ; 
 scalar_t__ T10_PI_TYPE3_PROTECTION ; 
 int TYPE_DISK ; 
 int TYPE_TAPE ; 
 unsigned char TYPE_WLUN ; 
 int check_condition_result ; 
 int FUNC0 (struct scsi_cmnd*,unsigned char*,int) ; 
 int FUNC1 (unsigned char*) ; 
 scalar_t__ have_dif_prot ; 
 unsigned char FUNC2 (unsigned char*,int,int,int,char*,int,int /*<<< orphan*/ *) ; 
 unsigned char FUNC3 (unsigned char*) ; 
 unsigned char FUNC4 (unsigned char*) ; 
 unsigned char FUNC5 (unsigned char*,int) ; 
 int FUNC6 (unsigned char*) ; 
 unsigned char FUNC7 (unsigned char*) ; 
 unsigned char FUNC8 (unsigned char*) ; 
 unsigned char FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,char*,int) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned char*) ; 
 int FUNC16 (char*,int,char*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ sdebug_dif ; 
 char* sdebug_inq_product_id ; 
 char* sdebug_inq_product_rev ; 
 char* sdebug_inq_vendor_id ; 
 scalar_t__ sdebug_no_lun_0 ; 
 int sdebug_ptype ; 
 scalar_t__ sdebug_removable ; 
 unsigned char sdebug_scsi_level ; 
 char* sdebug_version_date ; 
 scalar_t__ sdebug_vpd_use_hostno ; 

__attribute__((used)) static int FUNC18(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
	unsigned char pq_pdt;
	unsigned char *arr;
	unsigned char *cmd = scp->cmnd;
	int alloc_len, n, ret;
	bool have_wlun, is_disk;

	alloc_len = FUNC1(cmd + 3);
	arr = FUNC11(SDEBUG_MAX_INQ_ARR_SZ, GFP_ATOMIC);
	if (! arr)
		return DID_REQUEUE << 16;
	is_disk = (sdebug_ptype == TYPE_DISK);
	have_wlun = FUNC17(scp->device->lun);
	if (have_wlun)
		pq_pdt = TYPE_WLUN;	/* present, wlun */
	else if (sdebug_no_lun_0 && (devip->lun == SDEBUG_LUN_0_VAL))
		pq_pdt = 0x7f;	/* not present, PQ=3, PDT=0x1f */
	else
		pq_pdt = (sdebug_ptype & 0x1f);
	arr[0] = pq_pdt;
	if (0x2 & cmd[1]) {  /* CMDDT bit set */
		FUNC14(scp, SDEB_IN_CDB, 1, 1);
		FUNC10(arr);
		return check_condition_result;
	} else if (0x1 & cmd[1]) {  /* EVPD bit set */
		int lu_id_num, port_group_id, target_dev_id, len;
		char lu_id_str[6];
		int host_no = devip->sdbg_host->shost->host_no;
		
		port_group_id = (((host_no + 1) & 0x7f) << 8) +
		    (devip->channel & 0x7f);
		if (sdebug_vpd_use_hostno == 0)
			host_no = 0;
		lu_id_num = have_wlun ? -1 : (((host_no + 1) * 2000) +
			    (devip->target * 1000) + devip->lun);
		target_dev_id = ((host_no + 1) * 2000) +
				 (devip->target * 1000) - 3;
		len = FUNC16(lu_id_str, 6, "%d", lu_id_num);
		if (0 == cmd[2]) { /* supported vital product data pages */
			arr[1] = cmd[2];	/*sanity */
			n = 4;
			arr[n++] = 0x0;   /* this page */
			arr[n++] = 0x80;  /* unit serial number */
			arr[n++] = 0x83;  /* device identification */
			arr[n++] = 0x84;  /* software interface ident. */
			arr[n++] = 0x85;  /* management network addresses */
			arr[n++] = 0x86;  /* extended inquiry */
			arr[n++] = 0x87;  /* mode page policy */
			arr[n++] = 0x88;  /* SCSI ports */
			if (is_disk) {	  /* SBC only */
				arr[n++] = 0x89;  /* ATA information */
				arr[n++] = 0xb0;  /* Block limits */
				arr[n++] = 0xb1;  /* Block characteristics */
				arr[n++] = 0xb2;  /* Logical Block Prov */
			}
			arr[3] = n - 4;	  /* number of supported VPD pages */
		} else if (0x80 == cmd[2]) { /* unit serial number */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = len;
			FUNC12(&arr[4], lu_id_str, len);
		} else if (0x83 == cmd[2]) { /* device identification */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = FUNC2(&arr[4], port_group_id,
						target_dev_id, lu_id_num,
						lu_id_str, len,
						&devip->lu_name);
		} else if (0x84 == cmd[2]) { /* Software interface ident. */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = FUNC3(&arr[4]);
		} else if (0x85 == cmd[2]) { /* Management network addresses */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = FUNC4(&arr[4]);
		} else if (0x86 == cmd[2]) { /* extended inquiry */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = 0x3c;	/* number of following entries */
			if (sdebug_dif == T10_PI_TYPE3_PROTECTION)
				arr[4] = 0x4;	/* SPT: GRD_CHK:1 */
			else if (have_dif_prot)
				arr[4] = 0x5;   /* SPT: GRD_CHK:1, REF_CHK:1 */
			else
				arr[4] = 0x0;   /* no protection stuff */
			arr[5] = 0x7;   /* head of q, ordered + simple q's */
		} else if (0x87 == cmd[2]) { /* mode page policy */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = 0x8;	/* number of following entries */
			arr[4] = 0x2;	/* disconnect-reconnect mp */
			arr[6] = 0x80;	/* mlus, shared */
			arr[8] = 0x18;	 /* protocol specific lu */
			arr[10] = 0x82;	 /* mlus, per initiator port */
		} else if (0x88 == cmd[2]) { /* SCSI Ports */
			arr[1] = cmd[2];	/*sanity */
			arr[3] = FUNC5(&arr[4], target_dev_id);
		} else if (is_disk && 0x89 == cmd[2]) { /* ATA information */
			arr[1] = cmd[2];        /*sanity */
			n = FUNC6(&arr[4]);
			FUNC15(n, arr + 2);
		} else if (is_disk && 0xb0 == cmd[2]) { /* Block limits */
			arr[1] = cmd[2];        /*sanity */
			arr[3] = FUNC7(&arr[4]);
		} else if (is_disk && 0xb1 == cmd[2]) { /* Block char. */
			arr[1] = cmd[2];        /*sanity */
			arr[3] = FUNC8(&arr[4]);
		} else if (is_disk && 0xb2 == cmd[2]) { /* LB Prov. */
			arr[1] = cmd[2];        /*sanity */
			arr[3] = FUNC9(&arr[4]);
		} else {
			FUNC14(scp, SDEB_IN_CDB, 2, -1);
			FUNC10(arr);
			return check_condition_result;
		}
		len = FUNC13(FUNC1(arr + 2) + 4, alloc_len);
		ret = FUNC0(scp, arr,
			    FUNC13(len, SDEBUG_MAX_INQ_ARR_SZ));
		FUNC10(arr);
		return ret;
	}
	/* drops through here for a standard inquiry */
	arr[1] = sdebug_removable ? 0x80 : 0;	/* Removable disk */
	arr[2] = sdebug_scsi_level;
	arr[3] = 2;    /* response_data_format==2 */
	arr[4] = SDEBUG_LONG_INQ_SZ - 5;
	arr[5] = (int)have_dif_prot;	/* PROTECT bit */
	if (sdebug_vpd_use_hostno == 0)
		arr[5] |= 0x10; /* claim: implicit TPGS */
	arr[6] = 0x10; /* claim: MultiP */
	/* arr[6] |= 0x40; ... claim: EncServ (enclosure services) */
	arr[7] = 0xa; /* claim: LINKED + CMDQUE */
	FUNC12(&arr[8], sdebug_inq_vendor_id, 8);
	FUNC12(&arr[16], sdebug_inq_product_id, 16);
	FUNC12(&arr[32], sdebug_inq_product_rev, 4);
	/* Use Vendor Specific area to place driver date in ASCII hex */
	FUNC12(&arr[36], sdebug_version_date, 8);
	/* version descriptors (2 bytes each) follow */
	FUNC15(0xc0, arr + 58);   /* SAM-6 no version claimed */
	FUNC15(0x5c0, arr + 60);  /* SPC-5 no version claimed */
	n = 62;
	if (is_disk) {		/* SBC-4 no version claimed */
		FUNC15(0x600, arr + n);
		n += 2;
	} else if (sdebug_ptype == TYPE_TAPE) {	/* SSC-4 rev 3 */
		FUNC15(0x525, arr + n);
		n += 2;
	}
	FUNC15(0x2100, arr + n);	/* SPL-4 no version claimed */
	ret = FUNC0(scp, arr,
			    FUNC13(alloc_len, SDEBUG_LONG_INQ_SZ));
	FUNC10(arr);
	return ret;
}