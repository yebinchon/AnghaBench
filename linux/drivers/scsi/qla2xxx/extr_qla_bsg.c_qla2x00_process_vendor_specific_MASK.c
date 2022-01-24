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
struct TYPE_3__ {int* vendor_cmd; } ;
struct TYPE_4__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct bsg_job {struct fc_bsg_request* request; } ;

/* Variables and functions */
 int ENOSYS ; 
#define  QL_VND_A84_MGMT_CMD 151 
#define  QL_VND_A84_RESET 150 
#define  QL_VND_A84_UPDATE_FW 149 
#define  QL_VND_DIAG_IO_CMD 148 
#define  QL_VND_DPORT_DIAGNOSTICS 147 
#define  QL_VND_FCP_PRIO_CFG_CMD 146 
#define  QL_VND_FX00_MGMT_CMD 145 
#define  QL_VND_GET_BBCR_DATA 144 
#define  QL_VND_GET_FLASH_UPDATE_CAPS 143 
#define  QL_VND_GET_PRIV_STATS 142 
#define  QL_VND_GET_PRIV_STATS_EX 141 
#define  QL_VND_IIDMA 140 
#define  QL_VND_LOOPBACK 139 
#define  QL_VND_READ_FLASH 138 
#define  QL_VND_READ_FRU_STATUS 137 
#define  QL_VND_READ_I2C 136 
#define  QL_VND_SERDES_OP 135 
#define  QL_VND_SERDES_OP_EX 134 
#define  QL_VND_SET_FLASH_UPDATE_CAPS 133 
#define  QL_VND_SET_FRU_VERSION 132 
#define  QL_VND_SS_GET_FLASH_IMAGE_STATUS 131 
#define  QL_VND_UPDATE_FLASH 130 
#define  QL_VND_WRITE_FRU_STATUS 129 
#define  QL_VND_WRITE_I2C 128 
 int FUNC0 (struct bsg_job*) ; 
 int FUNC1 (struct bsg_job*) ; 
 int FUNC2 (struct bsg_job*) ; 
 int FUNC3 (struct bsg_job*) ; 
 int FUNC4 (struct bsg_job*) ; 
 int FUNC5 (struct bsg_job*) ; 
 int FUNC6 (struct bsg_job*) ; 
 int FUNC7 (struct bsg_job*) ; 
 int FUNC8 (struct bsg_job*) ; 
 int FUNC9 (struct bsg_job*) ; 
 int FUNC10 (struct bsg_job*) ; 
 int FUNC11 (struct bsg_job*) ; 
 int FUNC12 (struct bsg_job*) ; 
 int FUNC13 (struct bsg_job*) ; 
 int FUNC14 (struct bsg_job*) ; 
 int FUNC15 (struct bsg_job*) ; 
 int FUNC16 (struct bsg_job*) ; 
 int FUNC17 (struct bsg_job*) ; 
 int FUNC18 (struct bsg_job*) ; 
 int FUNC19 (struct bsg_job*) ; 
 int FUNC20 (struct bsg_job*) ; 
 int FUNC21 (struct bsg_job*) ; 
 int FUNC22 (struct bsg_job*) ; 

__attribute__((used)) static int
FUNC23(struct bsg_job *bsg_job)
{
	struct fc_bsg_request *bsg_request = bsg_job->request;

	switch (bsg_request->rqst_data.h_vendor.vendor_cmd[0]) {
	case QL_VND_LOOPBACK:
		return FUNC10(bsg_job);

	case QL_VND_A84_RESET:
		return FUNC20(bsg_job);

	case QL_VND_A84_UPDATE_FW:
		return FUNC21(bsg_job);

	case QL_VND_A84_MGMT_CMD:
		return FUNC19(bsg_job);

	case QL_VND_IIDMA:
		return FUNC0(bsg_job);

	case QL_VND_FCP_PRIO_CFG_CMD:
		return FUNC1(bsg_job);

	case QL_VND_READ_FLASH:
		return FUNC13(bsg_job);

	case QL_VND_UPDATE_FLASH:
		return FUNC15(bsg_job);

	case QL_VND_SET_FRU_VERSION:
		return FUNC14(bsg_job);

	case QL_VND_READ_FRU_STATUS:
		return FUNC11(bsg_job);

	case QL_VND_WRITE_FRU_STATUS:
		return FUNC16(bsg_job);

	case QL_VND_WRITE_I2C:
		return FUNC17(bsg_job);

	case QL_VND_READ_I2C:
		return FUNC12(bsg_job);

	case QL_VND_DIAG_IO_CMD:
		return FUNC2(bsg_job);

	case QL_VND_FX00_MGMT_CMD:
		return FUNC22(bsg_job);

	case QL_VND_SERDES_OP:
		return FUNC3(bsg_job);

	case QL_VND_SERDES_OP_EX:
		return FUNC18(bsg_job);

	case QL_VND_GET_FLASH_UPDATE_CAPS:
		return FUNC5(bsg_job);

	case QL_VND_SET_FLASH_UPDATE_CAPS:
		return FUNC6(bsg_job);

	case QL_VND_GET_BBCR_DATA:
		return FUNC4(bsg_job);

	case QL_VND_GET_PRIV_STATS:
	case QL_VND_GET_PRIV_STATS_EX:
		return FUNC9(bsg_job);

	case QL_VND_DPORT_DIAGNOSTICS:
		return FUNC7(bsg_job);

	case QL_VND_SS_GET_FLASH_IMAGE_STATUS:
		return FUNC8(bsg_job);

	default:
		return -ENOSYS;
	}
}