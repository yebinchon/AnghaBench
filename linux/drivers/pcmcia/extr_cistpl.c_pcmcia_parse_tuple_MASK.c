#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ TupleDataLen; scalar_t__ TupleDataMax; int TupleCode; } ;
typedef  TYPE_1__ tuple_t ;
struct TYPE_22__ {int /*<<< orphan*/  format; int /*<<< orphan*/  org; int /*<<< orphan*/  vers_2; int /*<<< orphan*/  device_geo; int /*<<< orphan*/  cftable_entry; int /*<<< orphan*/  config; int /*<<< orphan*/  funce; int /*<<< orphan*/  funcid; int /*<<< orphan*/  manfid; int /*<<< orphan*/  jedec; int /*<<< orphan*/  altstr; int /*<<< orphan*/  version_1; int /*<<< orphan*/  longlink_mfc; int /*<<< orphan*/  longlink; int /*<<< orphan*/  checksum; int /*<<< orphan*/  device; } ;
typedef  TYPE_2__ cisparse_t ;

/* Variables and functions */
#define  CISTPL_ALTSTR 150 
#define  CISTPL_CFTABLE_ENTRY 149 
#define  CISTPL_CHECKSUM 148 
#define  CISTPL_CONFIG 147 
#define  CISTPL_DEVICE 146 
#define  CISTPL_DEVICE_A 145 
#define  CISTPL_DEVICE_GEO 144 
#define  CISTPL_DEVICE_GEO_A 143 
#define  CISTPL_FORMAT 142 
#define  CISTPL_FORMAT_A 141 
#define  CISTPL_FUNCE 140 
#define  CISTPL_FUNCID 139 
#define  CISTPL_JEDEC_A 138 
#define  CISTPL_JEDEC_C 137 
#define  CISTPL_LINKTARGET 136 
#define  CISTPL_LONGLINK_A 135 
#define  CISTPL_LONGLINK_C 134 
#define  CISTPL_LONGLINK_MFC 133 
#define  CISTPL_MANFID 132 
#define  CISTPL_NO_LINK 131 
#define  CISTPL_ORG 130 
#define  CISTPL_VERS_1 129 
#define  CISTPL_VERS_2 128 
 int EINVAL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 

int FUNC17(tuple_t *tuple, cisparse_t *parse)
{
	int ret = 0;

	if (tuple->TupleDataLen > tuple->TupleDataMax)
		return -EINVAL;
	switch (tuple->TupleCode) {
	case CISTPL_DEVICE:
	case CISTPL_DEVICE_A:
		ret = FUNC4(tuple, &parse->device);
		break;
	case CISTPL_CHECKSUM:
		ret = FUNC2(tuple, &parse->checksum);
		break;
	case CISTPL_LONGLINK_A:
	case CISTPL_LONGLINK_C:
		ret = FUNC10(tuple, &parse->longlink);
		break;
	case CISTPL_LONGLINK_MFC:
		ret = FUNC11(tuple, &parse->longlink_mfc);
		break;
	case CISTPL_VERS_1:
		ret = FUNC14(tuple, &parse->version_1);
		break;
	case CISTPL_ALTSTR:
		ret = FUNC0(tuple, &parse->altstr);
		break;
	case CISTPL_JEDEC_A:
	case CISTPL_JEDEC_C:
		ret = FUNC9(tuple, &parse->jedec);
		break;
	case CISTPL_MANFID:
		ret = FUNC12(tuple, &parse->manfid);
		break;
	case CISTPL_FUNCID:
		ret = FUNC8(tuple, &parse->funcid);
		break;
	case CISTPL_FUNCE:
		ret = FUNC7(tuple, &parse->funce);
		break;
	case CISTPL_CONFIG:
		ret = FUNC3(tuple, &parse->config);
		break;
	case CISTPL_CFTABLE_ENTRY:
		ret = FUNC1(tuple, &parse->cftable_entry);
		break;
	case CISTPL_DEVICE_GEO:
	case CISTPL_DEVICE_GEO_A:
		ret = FUNC5(tuple, &parse->device_geo);
		break;
	case CISTPL_VERS_2:
		ret = FUNC15(tuple, &parse->vers_2);
		break;
	case CISTPL_ORG:
		ret = FUNC13(tuple, &parse->org);
		break;
	case CISTPL_FORMAT:
	case CISTPL_FORMAT_A:
		ret = FUNC6(tuple, &parse->format);
		break;
	case CISTPL_NO_LINK:
	case CISTPL_LINKTARGET:
		ret = 0;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	if (ret)
		FUNC16("parse_tuple failed %d\n", ret);
	return ret;
}