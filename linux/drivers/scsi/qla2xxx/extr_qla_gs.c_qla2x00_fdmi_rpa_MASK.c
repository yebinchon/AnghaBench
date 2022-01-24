#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_12__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int link_data_rate; int /*<<< orphan*/  ms_iocb_dma; int /*<<< orphan*/  ms_iocb; TYPE_2__* init_cb; TYPE_12__* ct_sns; TYPE_3__* isp_ops; } ;
struct new_utsname {char* nodename; } ;
struct init_cb_24xx {int /*<<< orphan*/  frame_payload_size; } ;
struct TYPE_19__ {scalar_t__ reason_code; scalar_t__ explanation_code; } ;
struct ct_sns_rsp {TYPE_1__ header; } ;
struct TYPE_23__ {void* count; } ;
struct TYPE_24__ {int /*<<< orphan*/  port_name; TYPE_5__ attrs; } ;
struct TYPE_25__ {TYPE_6__ rpa; } ;
struct ct_sns_req {TYPE_7__ req; } ;
struct TYPE_26__ {int* fc4_types; int max_frame_size; int /*<<< orphan*/  host_name; int /*<<< orphan*/  os_dev_name; void* cur_speed; void* sup_speed; } ;
struct ct_fdmi_port_attr {TYPE_8__ a; void* len; void* type; } ;
struct TYPE_27__ {int /*<<< orphan*/  host; int /*<<< orphan*/  host_no; int /*<<< orphan*/  port_name; struct qla_hw_data* hw; } ;
typedef  TYPE_9__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  ms_iocb_entry_t ;
struct TYPE_22__ {struct ct_sns_rsp rsp; } ;
struct TYPE_21__ {int /*<<< orphan*/ * (* prep_ms_fdmi_iocb ) (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {int /*<<< orphan*/  frame_payload_size; } ;
struct TYPE_18__ {TYPE_4__ p; } ;

/* Variables and functions */
 scalar_t__ CT_EXPL_ALREADY_REGISTERED ; 
 scalar_t__ CT_REASON_CANNOT_PERFORM ; 
 int FDMI_PORT_ATTR_COUNT ; 
 int FDMI_PORT_CURRENT_SPEED ; 
 int FDMI_PORT_FC4_TYPES ; 
 int FDMI_PORT_HOST_NAME ; 
 int FDMI_PORT_MAX_FRAME_SIZE ; 
 int FDMI_PORT_OS_DEVICE_NAME ; 
 int FDMI_PORT_SPEED_10GB ; 
 int FDMI_PORT_SPEED_16GB ; 
 int FDMI_PORT_SPEED_1GB ; 
 int FDMI_PORT_SPEED_2GB ; 
 int FDMI_PORT_SPEED_32GB ; 
 int FDMI_PORT_SPEED_4GB ; 
 int FDMI_PORT_SPEED_8GB ; 
 int FDMI_PORT_SPEED_UNKNOWN ; 
 int FDMI_PORT_SUPPORT_SPEED ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
#define  PORT_SPEED_10GB 134 
#define  PORT_SPEED_16GB 133 
#define  PORT_SPEED_1GB 132 
#define  PORT_SPEED_2GB 131 
#define  PORT_SPEED_32GB 130 
#define  PORT_SPEED_4GB 129 
#define  PORT_SPEED_8GB 128 
 char* QLA2XXX_DRIVER_NAME ; 
 int QLA_ALREADY_REGISTERED ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RPA_CMD ; 
 int /*<<< orphan*/  RPA_RSP_SIZE ; 
 int WWN_SIZE ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,TYPE_9__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_9__*,int,void*,int) ; 
 int FUNC15 (TYPE_9__*,int /*<<< orphan*/ *,struct ct_sns_rsp*,char*) ; 
 int FUNC16 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ct_sns_req* FUNC17 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct new_utsname* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(scsi_qla_host_t *vha)
{
	int rval, alen;
	uint32_t size;
	struct qla_hw_data *ha = vha->hw;
	ms_iocb_entry_t *ms_pkt;
	struct ct_sns_req *ct_req;
	struct ct_sns_rsp *ct_rsp;
	void *entries;
	struct ct_fdmi_port_attr *eiter;
	struct init_cb_24xx *icb24 = (struct init_cb_24xx *)ha->init_cb;
	struct new_utsname *p_sysid = NULL;

	/* Issue RPA */
	/* Prepare common MS IOCB */
	/*   Request size adjusted after CT preparation */
	ms_pkt = ha->isp_ops->prep_ms_fdmi_iocb(vha, 0, RPA_RSP_SIZE);

	/* Prepare CT request */
	ct_req = FUNC17(ha->ct_sns, RPA_CMD,
	    RPA_RSP_SIZE);
	ct_rsp = &ha->ct_sns->p.rsp;

	/* Prepare FDMI command arguments -- attribute block, attributes. */
	FUNC12(ct_req->req.rpa.port_name, vha->port_name, WWN_SIZE);
	size = WWN_SIZE + 4;

	/* Attributes */
	ct_req->req.rpa.attrs.count = FUNC9(FDMI_PORT_ATTR_COUNT);
	entries = &ct_req->req;

	/* FC4 types. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_FC4_TYPES);
	eiter->len = FUNC8(4 + 32);
	eiter->a.fc4_types[2] = 0x01;
	size += 4 + 32;

	FUNC13(ql_dbg_disc, vha, 0x2039,
	    "FC4_TYPES=%02x %02x.\n",
	    eiter->a.fc4_types[2],
	    eiter->a.fc4_types[1]);

	/* Supported speed. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_SUPPORT_SPEED);
	eiter->len = FUNC8(4 + 4);
	if (FUNC0(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_10GB);
	else if (FUNC6(ha) || FUNC7(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_32GB|
		    FDMI_PORT_SPEED_16GB|
		    FDMI_PORT_SPEED_8GB);
	else if (FUNC2(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_16GB|
		    FDMI_PORT_SPEED_8GB|
		    FDMI_PORT_SPEED_4GB);
	else if (FUNC5(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_8GB|
		    FDMI_PORT_SPEED_4GB|
		    FDMI_PORT_SPEED_2GB|
		    FDMI_PORT_SPEED_1GB);
	else if (FUNC4(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_4GB|
		    FDMI_PORT_SPEED_2GB|
		    FDMI_PORT_SPEED_1GB);
	else if (FUNC3(ha))
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_2GB|
		    FDMI_PORT_SPEED_1GB);
	else
		eiter->a.sup_speed = FUNC9(
		    FDMI_PORT_SPEED_1GB);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x203a,
	    "Supported_Speed=%x.\n", eiter->a.sup_speed);

	/* Current speed. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_CURRENT_SPEED);
	eiter->len = FUNC8(4 + 4);
	switch (ha->link_data_rate) {
	case PORT_SPEED_1GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_1GB);
		break;
	case PORT_SPEED_2GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_2GB);
		break;
	case PORT_SPEED_4GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_4GB);
		break;
	case PORT_SPEED_8GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_8GB);
		break;
	case PORT_SPEED_10GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_10GB);
		break;
	case PORT_SPEED_16GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_16GB);
		break;
	case PORT_SPEED_32GB:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_32GB);
		break;
	default:
		eiter->a.cur_speed =
		    FUNC9(FDMI_PORT_SPEED_UNKNOWN);
		break;
	}
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x203b,
	    "Current_Speed=%x.\n", eiter->a.cur_speed);

	/* Max frame size. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_MAX_FRAME_SIZE);
	eiter->len = FUNC8(4 + 4);
	eiter->a.max_frame_size = FUNC1(ha) ?
	    FUNC11(icb24->frame_payload_size) :
	    FUNC11(ha->init_cb->frame_payload_size);
	eiter->a.max_frame_size = FUNC9(eiter->a.max_frame_size);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x203c,
	    "Max_Frame_Size=%x.\n", eiter->a.max_frame_size);

	/* OS device name. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_OS_DEVICE_NAME);
	FUNC19(eiter->a.os_dev_name, sizeof(eiter->a.os_dev_name),
	    "%s:host%lu", QLA2XXX_DRIVER_NAME, vha->host_no);
	alen = FUNC20(eiter->a.os_dev_name);
	alen += 4 - (alen & 3);
	eiter->len = FUNC8(4 + alen);
	size += 4 + alen;

	FUNC13(ql_dbg_disc, vha, 0x204b,
	    "OS_Device_Name=%s.\n", eiter->a.os_dev_name);

	/* Hostname. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_HOST_NAME);
	p_sysid = FUNC22();
	if (p_sysid) {
		FUNC19(eiter->a.host_name, sizeof(eiter->a.host_name),
		    "%s", p_sysid->nodename);
	} else {
		FUNC19(eiter->a.host_name, sizeof(eiter->a.host_name),
		    "%s", FUNC10(vha->host));
	}
	alen = FUNC20(eiter->a.host_name);
	alen += 4 - (alen & 3);
	eiter->len = FUNC8(4 + alen);
	size += 4 + alen;

	FUNC13(ql_dbg_disc, vha, 0x203d, "HostName=%s.\n", eiter->a.host_name);

	/* Update MS request size. */
	FUNC18(vha, size + 16);

	FUNC13(ql_dbg_disc, vha, 0x203e,
	    "RPA portname  %016llx, size = %d.\n",
	    FUNC23(ct_req->req.rpa.port_name), size);
	FUNC14(ql_dbg_disc + ql_dbg_buffer, vha, 0x2079,
	    entries, size);

	/* Execute MS IOCB */
	rval = FUNC16(vha, ha->ms_iocb, ha->ms_iocb_dma,
	    sizeof(ms_iocb_entry_t));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC13(ql_dbg_disc, vha, 0x2040,
		    "RPA issue IOCB failed (%d).\n", rval);
	} else if (FUNC15(vha, ms_pkt, ct_rsp, "RPA") !=
	    QLA_SUCCESS) {
		rval = QLA_FUNCTION_FAILED;
		if (ct_rsp->header.reason_code == CT_REASON_CANNOT_PERFORM &&
		    ct_rsp->header.explanation_code ==
		    CT_EXPL_ALREADY_REGISTERED) {
			FUNC13(ql_dbg_disc, vha, 0x20cd,
			    "RPA already registered.\n");
			rval = QLA_ALREADY_REGISTERED;
		}

	} else {
		FUNC13(ql_dbg_disc, vha, 0x2041,
		    "RPA exiting normally.\n");
	}

	return rval;
}