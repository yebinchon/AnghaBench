#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int link_data_rate; int /*<<< orphan*/  ms_iocb_dma; int /*<<< orphan*/  ms_iocb; TYPE_5__* init_cb; TYPE_15__* ct_sns; TYPE_1__* isp_ops; } ;
struct new_utsname {char* nodename; } ;
struct init_cb_24xx {int /*<<< orphan*/  frame_payload_size; } ;
struct TYPE_23__ {int /*<<< orphan*/  explanation_code; int /*<<< orphan*/  reason_code; } ;
struct ct_sns_rsp {TYPE_11__ header; } ;
struct TYPE_34__ {int /*<<< orphan*/  port_name; } ;
struct TYPE_28__ {void* count; } ;
struct TYPE_29__ {TYPE_3__ attrs; int /*<<< orphan*/  port_name; } ;
struct TYPE_22__ {TYPE_9__ rpa; TYPE_4__ rpa2; } ;
struct ct_sns_req {TYPE_10__ req; } ;
struct TYPE_33__ {int* fc4_types; int max_frame_size; char* host_name; char* port_sym_name; int* port_fc4_type; void* port_id; void* num_ports; void* port_state; int /*<<< orphan*/  fabric_name; void* port_supported_cos; void* port_type; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; int /*<<< orphan*/  os_dev_name; void* cur_speed; void* sup_speed; } ;
struct ct_fdmiv2_port_attr {TYPE_8__ a; void* len; void* type; } ;
struct TYPE_32__ {int b24; } ;
struct TYPE_31__ {scalar_t__ nvme_enabled; } ;
struct TYPE_24__ {TYPE_7__ d_id; TYPE_6__ flags; int /*<<< orphan*/  fabric_node_name; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; int /*<<< orphan*/  host; int /*<<< orphan*/  host_no; struct qla_hw_data* hw; } ;
typedef  TYPE_12__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  ms_iocb_entry_t ;
struct TYPE_30__ {int /*<<< orphan*/  frame_payload_size; } ;
struct TYPE_27__ {struct ct_sns_rsp rsp; } ;
struct TYPE_26__ {int /*<<< orphan*/ * (* prep_ms_fdmi_iocb ) (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_25__ {TYPE_2__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_EXPL_ALREADY_REGISTERED ; 
 int /*<<< orphan*/  CT_REASON_CANNOT_PERFORM ; 
 int FC_CLASS_3 ; 
 int FDMIV2_PORT_ATTR_COUNT ; 
 int FDMI_PORT_COUNT ; 
 int FDMI_PORT_CURRENT_SPEED ; 
 int FDMI_PORT_FABRIC_NAME ; 
 int FDMI_PORT_FC4_TYPE ; 
 int FDMI_PORT_FC4_TYPES ; 
 int FDMI_PORT_HOST_NAME ; 
 int FDMI_PORT_ID ; 
 int FDMI_PORT_MAX_FRAME_SIZE ; 
 int FDMI_PORT_NAME ; 
 int FDMI_PORT_NODE_NAME ; 
 int FDMI_PORT_OS_DEVICE_NAME ; 
 int FDMI_PORT_SPEED_10GB ; 
 int FDMI_PORT_SPEED_16GB ; 
 int FDMI_PORT_SPEED_1GB ; 
 int FDMI_PORT_SPEED_2GB ; 
 int FDMI_PORT_SPEED_32GB ; 
 int FDMI_PORT_SPEED_4GB ; 
 int FDMI_PORT_SPEED_8GB ; 
 int FDMI_PORT_SPEED_UNKNOWN ; 
 int FDMI_PORT_STATE ; 
 int FDMI_PORT_SUPPORT_SPEED ; 
 int FDMI_PORT_SUPP_COS ; 
 int FDMI_PORT_SYM_NAME ; 
 int FDMI_PORT_TYPE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
 int NS_NX_PORT_TYPE ; 
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
 int /*<<< orphan*/  FUNC13 (scalar_t__,TYPE_12__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_12__*,int,void*,int) ; 
 int FUNC15 (TYPE_12__*,int /*<<< orphan*/ *,struct ct_sns_rsp*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_12__*,char*,int) ; 
 int FUNC17 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ct_sns_req* FUNC18 (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,char*,...) ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct new_utsname* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(scsi_qla_host_t *vha)
{
	int rval, alen;
	uint32_t size;
	struct qla_hw_data *ha = vha->hw;
	ms_iocb_entry_t *ms_pkt;
	struct ct_sns_req *ct_req;
	struct ct_sns_rsp *ct_rsp;
	void *entries;
	struct ct_fdmiv2_port_attr *eiter;
	struct init_cb_24xx *icb24 = (struct init_cb_24xx *)ha->init_cb;
	struct new_utsname *p_sysid = NULL;

	/* Issue RPA */
	/* Prepare common MS IOCB */
	/*   Request size adjusted after CT preparation */
	ms_pkt = ha->isp_ops->prep_ms_fdmi_iocb(vha, 0, RPA_RSP_SIZE);

	/* Prepare CT request */
	ct_req = FUNC18(ha->ct_sns, RPA_CMD, RPA_RSP_SIZE);
	ct_rsp = &ha->ct_sns->p.rsp;

	/* Prepare FDMI command arguments -- attribute block, attributes. */
	FUNC12(ct_req->req.rpa2.port_name, vha->port_name, WWN_SIZE);
	size = WWN_SIZE + 4;

	/* Attributes */
	ct_req->req.rpa2.attrs.count = FUNC9(FDMIV2_PORT_ATTR_COUNT);
	entries = &ct_req->req;

	/* FC4 types. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_FC4_TYPES);
	eiter->len = FUNC8(4 + 32);
	eiter->a.fc4_types[2] = 0x01;
	size += 4 + 32;

	FUNC13(ql_dbg_disc, vha, 0x20ba,
	    "FC4_TYPES=%02x %02x.\n",
	    eiter->a.fc4_types[2],
	    eiter->a.fc4_types[1]);

	if (vha->flags.nvme_enabled) {
		eiter->a.fc4_types[6] = 1;	/* NVMe type 28h */
		FUNC13(ql_dbg_disc, vha, 0x211f,
		    "NVME FC4 Type = %02x 0x0 0x0 0x0 0x0 0x0.\n",
		    eiter->a.fc4_types[6]);
	}

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

	FUNC13(ql_dbg_disc, vha, 0x20bb,
	    "Supported Port Speed = %x.\n", eiter->a.sup_speed);

	/* Current speed. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_CURRENT_SPEED);
	eiter->len = FUNC8(4 + 4);
	switch (ha->link_data_rate) {
	case PORT_SPEED_1GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_1GB);
		break;
	case PORT_SPEED_2GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_2GB);
		break;
	case PORT_SPEED_4GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_4GB);
		break;
	case PORT_SPEED_8GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_8GB);
		break;
	case PORT_SPEED_10GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_10GB);
		break;
	case PORT_SPEED_16GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_16GB);
		break;
	case PORT_SPEED_32GB:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_32GB);
		break;
	default:
		eiter->a.cur_speed = FUNC9(FDMI_PORT_SPEED_UNKNOWN);
		break;
	}
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x2017,
	    "Current_Speed = %x.\n", eiter->a.cur_speed);

	/* Max frame size. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_MAX_FRAME_SIZE);
	eiter->len = FUNC8(4 + 4);
	eiter->a.max_frame_size = FUNC1(ha) ?
	    FUNC11(icb24->frame_payload_size) :
	    FUNC11(ha->init_cb->frame_payload_size);
	eiter->a.max_frame_size = FUNC9(eiter->a.max_frame_size);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x20bc,
	    "Max_Frame_Size = %x.\n", eiter->a.max_frame_size);

	/* OS device name. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_OS_DEVICE_NAME);
	alen = FUNC21(QLA2XXX_DRIVER_NAME);
	FUNC20(eiter->a.os_dev_name, sizeof(eiter->a.os_dev_name),
	    "%s:host%lu", QLA2XXX_DRIVER_NAME, vha->host_no);
	alen += 4 - (alen & 3);
	eiter->len = FUNC8(4 + alen);
	size += 4 + alen;

	FUNC13(ql_dbg_disc, vha, 0x20be,
	    "OS_Device_Name = %s.\n", eiter->a.os_dev_name);

	/* Hostname. */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_HOST_NAME);
	p_sysid = FUNC23();
	if (p_sysid) {
		FUNC20(eiter->a.host_name, sizeof(eiter->a.host_name),
		    "%s", p_sysid->nodename);
	} else {
		FUNC20(eiter->a.host_name, sizeof(eiter->a.host_name),
		    "%s", FUNC10(vha->host));
	}
	alen = FUNC21(eiter->a.host_name);
	alen += 4 - (alen & 3);
	eiter->len = FUNC8(4 + alen);
	size += 4 + alen;

	FUNC13(ql_dbg_disc, vha, 0x201a,
	    "HostName=%s.\n", eiter->a.host_name);

	/* Node Name */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_NODE_NAME);
	FUNC12(eiter->a.node_name, vha->node_name, WWN_SIZE);
	eiter->len = FUNC8(4 + WWN_SIZE);
	size += 4 + WWN_SIZE;

	FUNC13(ql_dbg_disc, vha, 0x20c0,
	    "Node Name = %016llx.\n", FUNC24(eiter->a.node_name));

	/* Port Name */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_NAME);
	FUNC12(eiter->a.port_name, vha->port_name, WWN_SIZE);
	eiter->len = FUNC8(4 + WWN_SIZE);
	size += 4 + WWN_SIZE;

	FUNC13(ql_dbg_disc, vha, 0x20c1,
	    "Port Name = %016llx.\n", FUNC24(eiter->a.port_name));

	/* Port Symbolic Name */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_SYM_NAME);
	FUNC16(vha, eiter->a.port_sym_name,
	    sizeof(eiter->a.port_sym_name));
	alen = FUNC21(eiter->a.port_sym_name);
	alen += 4 - (alen & 3);
	eiter->len = FUNC8(4 + alen);
	size += 4 + alen;

	FUNC13(ql_dbg_disc, vha, 0x20c2,
	    "port symbolic name = %s\n", eiter->a.port_sym_name);

	/* Port Type */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_TYPE);
	eiter->a.port_type = FUNC9(NS_NX_PORT_TYPE);
	eiter->len = FUNC8(4 + 4);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x20c3,
	    "Port Type = %x.\n", eiter->a.port_type);

	/* Class of Service  */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_SUPP_COS);
	eiter->a.port_supported_cos = FUNC9(FC_CLASS_3);
	eiter->len = FUNC8(4 + 4);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x20c4,
	    "Supported COS = %08x\n", eiter->a.port_supported_cos);

	/* Port Fabric Name */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_FABRIC_NAME);
	FUNC12(eiter->a.fabric_name, vha->fabric_node_name, WWN_SIZE);
	eiter->len = FUNC8(4 + WWN_SIZE);
	size += 4 + WWN_SIZE;

	FUNC13(ql_dbg_disc, vha, 0x20c5,
	    "Fabric Name = %016llx.\n", FUNC24(eiter->a.fabric_name));

	/* FC4_type */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_FC4_TYPE);
	eiter->a.port_fc4_type[0] = 0;
	eiter->a.port_fc4_type[1] = 0;
	eiter->a.port_fc4_type[2] = 1;
	eiter->a.port_fc4_type[3] = 0;
	eiter->len = FUNC8(4 + 32);
	size += 4 + 32;

	FUNC13(ql_dbg_disc, vha, 0x20c6,
	    "Port Active FC4 Type = %02x %02x.\n",
	    eiter->a.port_fc4_type[2], eiter->a.port_fc4_type[1]);

	if (vha->flags.nvme_enabled) {
		eiter->a.port_fc4_type[4] = 0;
		eiter->a.port_fc4_type[5] = 0;
		eiter->a.port_fc4_type[6] = 1;	/* NVMe type 28h */
		FUNC13(ql_dbg_disc, vha, 0x2120,
		    "NVME Port Active FC4 Type = %02x 0x0 0x0 0x0 0x0 0x0.\n",
		    eiter->a.port_fc4_type[6]);
	}

	/* Port State */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_STATE);
	eiter->a.port_state = FUNC9(1);
	eiter->len = FUNC8(4 + 4);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x20c7,
	    "Port State = %x.\n", eiter->a.port_state);

	/* Number of Ports */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_COUNT);
	eiter->a.num_ports = FUNC9(1);
	eiter->len = FUNC8(4 + 4);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x20c8,
	    "Number of ports = %x.\n", eiter->a.num_ports);

	/* Port Id */
	eiter = entries + size;
	eiter->type = FUNC8(FDMI_PORT_ID);
	eiter->a.port_id = FUNC9(vha->d_id.b24);
	eiter->len = FUNC8(4 + 4);
	size += 4 + 4;

	FUNC13(ql_dbg_disc, vha, 0x201c,
	    "Port Id = %x.\n", eiter->a.port_id);

	/* Update MS request size. */
	FUNC19(vha, size + 16);

	FUNC13(ql_dbg_disc, vha, 0x2018,
	    "RPA portname= %8phN size=%d.\n", ct_req->req.rpa.port_name, size);
	FUNC14(ql_dbg_disc + ql_dbg_buffer, vha, 0x20ca,
	    entries, size);

	/* Execute MS IOCB */
	rval = FUNC17(vha, ha->ms_iocb, ha->ms_iocb_dma,
	    sizeof(ms_iocb_entry_t));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC13(ql_dbg_disc, vha, 0x20cb,
		    "RPA FDMI v2 issue IOCB failed (%d).\n", rval);
	} else if (FUNC15(vha, ms_pkt, ct_rsp, "RPA") !=
	    QLA_SUCCESS) {
		rval = QLA_FUNCTION_FAILED;
		if (ct_rsp->header.reason_code == CT_REASON_CANNOT_PERFORM &&
		    ct_rsp->header.explanation_code ==
		    CT_EXPL_ALREADY_REGISTERED) {
			FUNC13(ql_dbg_disc, vha, 0x20ce,
			    "RPA FDMI v2 already registered\n");
			rval = QLA_ALREADY_REGISTERED;
		} else {
			FUNC13(ql_dbg_disc, vha, 0x2020,
			    "RPA FDMI v2 failed, CT Reason code: 0x%x, CT Explanation 0x%x\n",
			    ct_rsp->header.reason_code,
			    ct_rsp->header.explanation_code);
		}
	} else {
		FUNC13(ql_dbg_disc, vha, 0x20cc,
		    "RPA FDMI V2 exiting normally.\n");
	}

	return rval;
}