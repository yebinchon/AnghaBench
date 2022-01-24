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
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct ms_lib_type_extdat {int ovrflg; int mngflg; scalar_t__ logadr; } ;
struct TYPE_2__ {scalar_t__ NumberOfPhyBlock; } ;
struct ene_ub6250_info {void** bbuf; TYPE_1__ MS_Lib; } ;

/* Variables and functions */
 scalar_t__ MS_LB_NOT_USED ; 
 scalar_t__ MS_PHYSICAL_BLOCKS_PER_SEGMENT ; 
 int MS_REG_MNG_ATFLG ; 
 int MS_REG_MNG_ATFLG_ATTBL ; 
 int MS_REG_OVR_BKST ; 
 int MS_REG_OVR_BKST_OK ; 
 int MS_REG_OVR_UDST ; 
 int MS_REG_OVR_UDST_UPDATING ; 
#define  MS_STATUS_ERROR 128 
 int MS_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (void*,void*) ; 
 scalar_t__ FUNC1 (struct us_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct us_data*,scalar_t__,int /*<<< orphan*/ ,struct ms_lib_type_extdat*) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,scalar_t__,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (struct us_data*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct us_data*,scalar_t__) ; 
 int FUNC8 (struct ene_ub6250_info*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct ene_ub6250_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct us_data *us, u16 btBlk1st)
{
	u16 PhyBlock, newblk, i;
	u16 LogStart, LogEnde;
	struct ms_lib_type_extdat extdat;
	u32 count = 0, index = 0;
	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
	u8 *bbuf = info->bbuf;

	for (PhyBlock = 0; PhyBlock < info->MS_Lib.NumberOfPhyBlock;) {
		FUNC3(PhyBlock, &LogStart, &LogEnde);

		for (i = 0; i < MS_PHYSICAL_BLOCKS_PER_SEGMENT; i++, PhyBlock++) {
			switch (FUNC8(info, PhyBlock)) {
			case MS_STATUS_ERROR:
				continue;
			default:
				break;
			}

			if (count == PhyBlock) {
				FUNC5(us, PhyBlock, 0, 0x80,
						bbuf);
				count += 0x80;
			}
			index = (PhyBlock % 0x80) * 4;

			extdat.ovrflg = bbuf[index];
			extdat.mngflg = bbuf[index+1];
			extdat.logadr = FUNC0(bbuf[index+2],
					bbuf[index+3]);

			if ((extdat.ovrflg & MS_REG_OVR_BKST) != MS_REG_OVR_BKST_OK) {
				FUNC7(us, PhyBlock);
				continue;
			}

			if ((extdat.mngflg & MS_REG_MNG_ATFLG) == MS_REG_MNG_ATFLG_ATTBL) {
				FUNC2(us, PhyBlock);
				continue;
			}

			if (extdat.logadr != MS_LB_NOT_USED) {
				if ((extdat.logadr < LogStart) || (LogEnde <= extdat.logadr)) {
					FUNC2(us, PhyBlock);
					continue;
				}

				newblk = FUNC9(info, extdat.logadr);

				if (newblk != MS_LB_NOT_USED) {
					if (extdat.logadr == 0) {
						FUNC6(us, extdat.logadr, PhyBlock);
						if (FUNC1(us, btBlk1st)) {
							FUNC6(us, extdat.logadr, newblk);
							continue;
						}
					}

					FUNC4(us, newblk, 0, &extdat);
					if ((extdat.ovrflg & MS_REG_OVR_UDST) == MS_REG_OVR_UDST_UPDATING) {
						FUNC2(us, PhyBlock);
						continue;
					} else {
						FUNC2(us, newblk);
					}
				}

				FUNC6(us, extdat.logadr, PhyBlock);
			}
		}
	} /* End for ... */

	return MS_STATUS_SUCCESS;
}