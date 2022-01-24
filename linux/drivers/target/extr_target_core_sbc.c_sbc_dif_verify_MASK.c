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
struct t10_pi_tuple {scalar_t__ app_tag; int /*<<< orphan*/  ref_tag; int /*<<< orphan*/  guard_tag; } ;
struct TYPE_2__ {unsigned int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {scalar_t__ bad_sector; struct scatterlist* t_data_sg; struct se_device* se_dev; } ;
struct scatterlist {int offset; int length; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ T10_PI_APP_ESCAPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*,struct t10_pi_tuple*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct scatterlist* FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 

sense_reason_t
FUNC10(struct se_cmd *cmd, sector_t start, unsigned int sectors,
	       unsigned int ei_lba, struct scatterlist *psg, int psg_off)
{
	struct se_device *dev = cmd->se_dev;
	struct t10_pi_tuple *sdt;
	struct scatterlist *dsg = cmd->t_data_sg;
	sector_t sector = start;
	void *daddr, *paddr;
	int i;
	sense_reason_t rc;
	int dsg_off = 0;
	unsigned int block_size = dev->dev_attrib.block_size;

	for (; psg && sector < start + sectors; psg = FUNC8(psg)) {
		paddr = FUNC3(FUNC9(psg)) + psg->offset;
		daddr = FUNC3(FUNC9(dsg)) + dsg->offset;

		for (i = psg_off; i < psg->length &&
				sector < start + sectors;
				i += sizeof(*sdt)) {
			__u16 crc;
			unsigned int avail;

			if (dsg_off >= dsg->length) {
				dsg_off -= dsg->length;
				FUNC4(daddr - dsg->offset);
				dsg = FUNC8(dsg);
				if (!dsg) {
					FUNC4(paddr - psg->offset);
					return 0;
				}
				daddr = FUNC3(FUNC9(dsg)) + dsg->offset;
			}

			sdt = paddr + i;

			FUNC6("DIF READ sector: %llu guard_tag: 0x%04x"
				 " app_tag: 0x%04x ref_tag: %u\n",
				 (unsigned long long)sector, sdt->guard_tag,
				 sdt->app_tag, FUNC0(sdt->ref_tag));

			if (sdt->app_tag == T10_PI_APP_ESCAPE) {
				dsg_off += block_size;
				goto next;
			}

			avail = FUNC5(block_size, dsg->length - dsg_off);
			crc = FUNC1(daddr + dsg_off, avail);
			if (avail < block_size) {
				FUNC4(daddr - dsg->offset);
				dsg = FUNC8(dsg);
				if (!dsg) {
					FUNC4(paddr - psg->offset);
					return 0;
				}
				daddr = FUNC3(FUNC9(dsg)) + dsg->offset;
				dsg_off = block_size - avail;
				crc = FUNC2(crc, daddr, dsg_off);
			} else {
				dsg_off += block_size;
			}

			rc = FUNC7(cmd, sdt, crc, sector, ei_lba);
			if (rc) {
				FUNC4(daddr - dsg->offset);
				FUNC4(paddr - psg->offset);
				cmd->bad_sector = sector;
				return rc;
			}
next:
			sector++;
			ei_lba++;
		}

		psg_off = 0;
		FUNC4(daddr - dsg->offset);
		FUNC4(paddr - psg->offset);
	}

	return 0;
}