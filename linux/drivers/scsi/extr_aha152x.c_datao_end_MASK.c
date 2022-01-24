#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct scatterlist {int length; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int this_residual; struct scatterlist* buffer; scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ SCp; } ;

/* Variables and functions */
 int CH1 ; 
 int CLRCH1 ; 
 int CLRSTCNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__* CURRENT_SC ; 
 int DATA_LEN ; 
 int /*<<< orphan*/  DFIFOEMP ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int /*<<< orphan*/  DMASTAT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  SXFRCTL0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 struct scatterlist* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 struct scatterlist* FUNC9 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC10(struct Scsi_Host *shpnt)
{
	if(FUNC4(DMASTAT, DFIFOEMP)) {
		u32 datao_cnt = FUNC1();
		int datao_out = DATA_LEN - FUNC6(CURRENT_SC);
		int done;
		struct scatterlist *sg = FUNC7(CURRENT_SC);

		FUNC0(CURRENT_SC, datao_out - datao_cnt);

		done = FUNC5(CURRENT_SC) - FUNC6(CURRENT_SC);
		/* Locate the first SG entry not yet sent */
		while (done > 0 && !FUNC8(sg)) {
			if (done < sg->length)
				break;
			done -= sg->length;
			sg = FUNC9(sg);
		}

		CURRENT_SC->SCp.buffer = sg;
		CURRENT_SC->SCp.ptr = FUNC3(CURRENT_SC->SCp.buffer) + done;
		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
			done;
	}

	FUNC2(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
	FUNC2(SXFRCTL0, CH1);

	FUNC2(DMACNTRL0, 0);
}