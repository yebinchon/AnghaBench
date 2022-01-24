#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ssb_sflash_tbl_e {int id; int blocksize; int numblocks; int /*<<< orphan*/  name; } ;
struct ssb_sflash {int blocksize; int numblocks; int size; int present; int /*<<< orphan*/  window; } ;
struct ssb_chipcommon {int capabilities; TYPE_3__* dev; } ;
struct TYPE_11__ {struct ssb_sflash* platform_data; } ;
struct TYPE_12__ {TYPE_5__ dev; TYPE_4__* resource; } ;
struct TYPE_10__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_9__ {TYPE_2__* bus; } ;
struct TYPE_7__ {struct ssb_sflash sflash; } ;
struct TYPE_8__ {TYPE_1__ mipscore; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int SSB_CHIPCO_CAP_FLASHT ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASHADDR ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASHCTL_AT_STATUS ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASHCTL_ST_DP ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASHCTL_ST_RES ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASHDATA ; 
#define  SSB_CHIPCO_FLASHT_ATSER 129 
#define  SSB_CHIPCO_FLASHT_STSER 128 
 int /*<<< orphan*/  SSB_FLASH2 ; 
 int FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 struct ssb_sflash_tbl_e* ssb_sflash_at_tbl ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 TYPE_6__ ssb_sflash_dev ; 
 struct ssb_sflash_tbl_e* ssb_sflash_sst_tbl ; 
 struct ssb_sflash_tbl_e* ssb_sflash_st_tbl ; 

int FUNC5(struct ssb_chipcommon *cc)
{
	struct ssb_sflash *sflash = &cc->dev->bus->mipscore.sflash;
	const struct ssb_sflash_tbl_e *e;
	u32 id, id2;

	switch (cc->capabilities & SSB_CHIPCO_CAP_FLASHT) {
	case SSB_CHIPCO_FLASHT_STSER:
		FUNC4(cc, SSB_CHIPCO_FLASHCTL_ST_DP);

		FUNC1(cc, SSB_CHIPCO_FLASHADDR, 0);
		FUNC4(cc, SSB_CHIPCO_FLASHCTL_ST_RES);
		id = FUNC0(cc, SSB_CHIPCO_FLASHDATA);

		FUNC1(cc, SSB_CHIPCO_FLASHADDR, 1);
		FUNC4(cc, SSB_CHIPCO_FLASHCTL_ST_RES);
		id2 = FUNC0(cc, SSB_CHIPCO_FLASHDATA);

		switch (id) {
		case 0xbf:
			for (e = ssb_sflash_sst_tbl; e->name; e++) {
				if (e->id == id2)
					break;
			}
			break;
		case 0x13:
			return -ENOTSUPP;
		default:
			for (e = ssb_sflash_st_tbl; e->name; e++) {
				if (e->id == id)
					break;
			}
			break;
		}
		if (!e->name) {
			FUNC2("Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\n",
			       id, id2);
			return -ENOTSUPP;
		}

		break;
	case SSB_CHIPCO_FLASHT_ATSER:
		FUNC4(cc, SSB_CHIPCO_FLASHCTL_AT_STATUS);
		id = FUNC0(cc, SSB_CHIPCO_FLASHDATA) & 0x3c;

		for (e = ssb_sflash_at_tbl; e->name; e++) {
			if (e->id == id)
				break;
		}
		if (!e->name) {
			FUNC2("Unsupported Atmel serial flash (id: 0x%X)\n",
			       id);
			return -ENOTSUPP;
		}

		break;
	default:
		FUNC2("Unsupported flash type\n");
		return -ENOTSUPP;
	}

	sflash->window = SSB_FLASH2;
	sflash->blocksize = e->blocksize;
	sflash->numblocks = e->numblocks;
	sflash->size = sflash->blocksize * sflash->numblocks;
	sflash->present = true;

	FUNC3("Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\n",
		e->name, sflash->size / 1024, e->blocksize, e->numblocks);

	/* Prepare platform device, but don't register it yet. It's too early,
	 * malloc (required by device_private_init) is not available yet. */
	ssb_sflash_dev.resource[0].end = ssb_sflash_dev.resource[0].start +
					 sflash->size;
	ssb_sflash_dev.dev.platform_data = sflash;

	return 0;
}