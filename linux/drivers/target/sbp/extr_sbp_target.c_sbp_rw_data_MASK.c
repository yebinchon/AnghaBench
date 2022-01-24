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
typedef  int u64 ;
struct sg_mapping_iter {int consumed; int /*<<< orphan*/  addr; scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ data_direction; int data_length; int /*<<< orphan*/  t_data_nents; int /*<<< orphan*/  t_data_sg; } ;
struct TYPE_5__ {int /*<<< orphan*/  data_descriptor; int /*<<< orphan*/  misc; } ;
struct sbp_target_request {TYPE_3__ se_cmd; TYPE_2__ orb; struct sbp_page_table_entry* pg_tbl; TYPE_1__* login; } ;
struct sbp_session {int node_id; int generation; int /*<<< orphan*/  lock; int /*<<< orphan*/  card; } ;
struct sbp_page_table_entry {int /*<<< orphan*/  segment_length; int /*<<< orphan*/  segment_base_lo; int /*<<< orphan*/  segment_base_hi; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {struct sbp_session* sess; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int EIO ; 
 int RCODE_COMPLETE ; 
 int SG_MITER_FROM_SG ; 
 int SG_MITER_TO_SG ; 
 int TCODE_READ_BLOCK_REQUEST ; 
 int TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct fw_card* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_card*) ; 
 int FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct fw_card*,int,int,int,int,unsigned long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC14 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sbp_target_request *req)
{
	struct sbp_session *sess = req->login->sess;
	int tcode, sg_miter_flags, max_payload, pg_size, speed, node_id,
		generation, num_pte, length, tfr_length,
		rcode = RCODE_COMPLETE;
	struct sbp_page_table_entry *pte;
	unsigned long long offset;
	struct fw_card *card;
	struct sg_mapping_iter iter;

	if (req->se_cmd.data_direction == DMA_FROM_DEVICE) {
		tcode = TCODE_WRITE_BLOCK_REQUEST;
		sg_miter_flags = SG_MITER_FROM_SG;
	} else {
		tcode = TCODE_READ_BLOCK_REQUEST;
		sg_miter_flags = SG_MITER_TO_SG;
	}

	max_payload = 4 << FUNC1(FUNC6(req->orb.misc));
	speed = FUNC3(FUNC6(req->orb.misc));

	pg_size = FUNC2(FUNC6(req->orb.misc));
	if (pg_size) {
		FUNC10("sbp_run_transaction: page size ignored\n");
		pg_size = 0x100 << pg_size;
	}

	FUNC16(&sess->lock);
	card = FUNC7(sess->card);
	node_id = sess->node_id;
	generation = sess->generation;
	FUNC17(&sess->lock);

	if (req->pg_tbl) {
		pte = req->pg_tbl;
		num_pte = FUNC0(FUNC6(req->orb.misc));

		offset = 0;
		length = 0;
	} else {
		pte = NULL;
		num_pte = 0;

		offset = FUNC11(&req->orb.data_descriptor);
		length = req->se_cmd.data_length;
	}

	FUNC14(&iter, req->se_cmd.t_data_sg, req->se_cmd.t_data_nents,
		sg_miter_flags);

	while (length || num_pte) {
		if (!length) {
			offset = (u64)FUNC5(pte->segment_base_hi) << 32 |
				FUNC6(pte->segment_base_lo);
			length = FUNC5(pte->segment_length);

			pte++;
			num_pte--;
		}

		FUNC13(&iter);

		tfr_length = FUNC9(length, max_payload, (int)iter.length);

		/* FIXME: take page_size into account */

		rcode = FUNC12(card, tcode, node_id,
				generation, speed,
				offset, iter.addr, tfr_length);

		if (rcode != RCODE_COMPLETE)
			break;

		length -= tfr_length;
		offset += tfr_length;
		iter.consumed = tfr_length;
	}

	FUNC15(&iter);
	FUNC8(card);

	if (rcode == RCODE_COMPLETE) {
		FUNC4(length != 0);
		return 0;
	} else {
		return -EIO;
	}
}