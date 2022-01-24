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
typedef  union atto_vda_req {int dummy; } atto_vda_req ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_request {int /*<<< orphan*/  comp_cb; int /*<<< orphan*/  req_list; } ;
struct esas2r_mem_desc {int size; scalar_t__ virt_addr; int /*<<< orphan*/  next_desc; } ;
struct esas2r_inbound_list_source_entry {int /*<<< orphan*/  length; scalar_t__ reserved; scalar_t__ address; } ;
struct esas2r_adapter {int list_size; scalar_t__ volatile* outbound_copy; struct esas2r_request* first_ae_req; struct esas2r_mem_desc inbound_list_md; int /*<<< orphan*/  flags; int /*<<< orphan*/ * disc_buffer; struct esas2r_sas_nvram* nvram; struct esas2r_mem_desc outbound_list_md; int /*<<< orphan*/  free_sg_list_head; struct esas2r_mem_desc* sg_list_mds; int /*<<< orphan*/  flags2; TYPE_1__* pcid; int /*<<< orphan*/ * req_table; struct esas2r_request general_req; int /*<<< orphan*/ * targetdb; int /*<<< orphan*/ * targetdb_end; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  sg_list_lock; } ;
struct atto_vda_ob_rsp {int dummy; } ;
struct TYPE_2__ {scalar_t__ subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_SERIAL_FLASH ; 
 int /*<<< orphan*/  AF2_THUNDERBOLT ; 
 int /*<<< orphan*/  AF2_THUNDERLINK ; 
 int /*<<< orphan*/  AF_FIRST_INIT ; 
 int /*<<< orphan*/  AF_NVR_VALID ; 
 int ATTO_SSDID_TBT ; 
 int ATTO_TLSH_1068 ; 
 scalar_t__ ATTO_VENDOR_ID ; 
 int /*<<< orphan*/  ESAS2R_DISC_BUF_LEN ; 
 int /*<<< orphan*/  ESAS2R_LIST_ALIGN ; 
 scalar_t__ ESAS2R_LIST_EXTRA ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 size_t ESAS2R_MAX_TARGETS ; 
 int /*<<< orphan*/  ESAS2R_SGL_ALIGN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HWILSE_INTERFACE_F0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUM_SGL_MIN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  esas2r_ae_complete ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*,struct esas2r_mem_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct esas2r_request*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct esas2r_adapter*) ; 
 void* FUNC11 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ num_ae_requests ; 
 scalar_t__ num_requests ; 
 scalar_t__ num_sg_lists ; 
 int sgl_page_size ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC15(struct esas2r_adapter *a,
				void **uncached_area)
{
	u32 i;
	u8 *high;
	struct esas2r_inbound_list_source_entry *element;
	struct esas2r_request *rq;
	struct esas2r_mem_desc *sgl;

	FUNC13(&a->sg_list_lock);
	FUNC13(&a->mem_lock);
	FUNC13(&a->queue_lock);

	a->targetdb_end = &a->targetdb[ESAS2R_MAX_TARGETS];

	if (!FUNC2(a, &a->general_req)) {
		FUNC4(
			"failed to allocate a VDA request for the general req!");
		return false;
	}

	/* allocate requests for asynchronous events */
	a->first_ae_req =
		FUNC11(num_ae_requests, sizeof(struct esas2r_request),
			GFP_KERNEL);

	if (a->first_ae_req == NULL) {
		FUNC7(ESAS2R_LOG_CRIT,
			   "failed to allocate memory for asynchronous events");
		return false;
	}

	/* allocate the S/G list memory descriptors */
	a->sg_list_mds = FUNC11(num_sg_lists, sizeof(struct esas2r_mem_desc),
				 GFP_KERNEL);

	if (a->sg_list_mds == NULL) {
		FUNC7(ESAS2R_LOG_CRIT,
			   "failed to allocate memory for s/g list descriptors");
		return false;
	}

	/* allocate the request table */
	a->req_table =
		FUNC11(num_requests + num_ae_requests + 1,
			sizeof(struct esas2r_request *),
			GFP_KERNEL);

	if (a->req_table == NULL) {
		FUNC7(ESAS2R_LOG_CRIT,
			   "failed to allocate memory for the request table");
		return false;
	}

	/* initialize PCI configuration space */
	FUNC5(a);

	/*
	 * the thunder_stream boards all have a serial flash part that has a
	 * different base address on the AHB bus.
	 */
	if ((a->pcid->subsystem_vendor == ATTO_VENDOR_ID)
	    && (a->pcid->subsystem_device & ATTO_SSDID_TBT))
		a->flags2 |= AF2_THUNDERBOLT;

	if (FUNC14(AF2_THUNDERBOLT, &a->flags2))
		a->flags2 |= AF2_SERIAL_FLASH;

	if (a->pcid->subsystem_device == ATTO_TLSH_1068)
		a->flags2 |= AF2_THUNDERLINK;

	/* Uncached Area */
	high = (u8 *)*uncached_area;

	/* initialize the scatter/gather table pages */

	for (i = 0, sgl = a->sg_list_mds; i < num_sg_lists; i++, sgl++) {
		sgl->size = sgl_page_size;

		FUNC12(&sgl->next_desc, &a->free_sg_list_head);

		if (!FUNC6(a, sgl, ESAS2R_SGL_ALIGN)) {
			/* Allow the driver to load if the minimum count met. */
			if (i < NUM_SGL_MIN)
				return false;
			break;
		}
	}

	/* compute the size of the lists */
	a->list_size = num_requests + ESAS2R_LIST_EXTRA;

	/* allocate the inbound list */
	a->inbound_list_md.size = a->list_size *
				  sizeof(struct
					 esas2r_inbound_list_source_entry);

	if (!FUNC6(a, &a->inbound_list_md, ESAS2R_LIST_ALIGN)) {
		FUNC4("failed to allocate IB list");
		return false;
	}

	/* allocate the outbound list */
	a->outbound_list_md.size = a->list_size *
				   sizeof(struct atto_vda_ob_rsp);

	if (!FUNC6(a, &a->outbound_list_md,
				  ESAS2R_LIST_ALIGN)) {
		FUNC4("failed to allocate IB list");
		return false;
	}

	/* allocate the NVRAM structure */
	a->nvram = (struct esas2r_sas_nvram *)high;
	high += sizeof(struct esas2r_sas_nvram);

	/* allocate the discovery buffer */
	a->disc_buffer = high;
	high += ESAS2R_DISC_BUF_LEN;
	high = FUNC1(high, 8);

	/* allocate the outbound list copy pointer */
	a->outbound_copy = (u32 volatile *)high;
	high += sizeof(u32);

	if (!FUNC14(AF_NVR_VALID, &a->flags))
		FUNC8(a);

	/* update the caller's uncached memory area pointer */
	*uncached_area = (void *)high;

	/* initialize the allocated memory */
	if (FUNC14(AF_FIRST_INIT, &a->flags)) {
		FUNC10(a);

		/* prime parts of the inbound list */
		element =
			(struct esas2r_inbound_list_source_entry *)a->
			inbound_list_md.
			virt_addr;

		for (i = 0; i < a->list_size; i++) {
			element->address = 0;
			element->reserved = 0;
			element->length = FUNC3(HWILSE_INTERFACE_F0
						      | (sizeof(union
								atto_vda_req)
							 /
							 sizeof(u32)));
			element++;
		}

		/* init the AE requests */
		for (rq = a->first_ae_req, i = 0; i < num_ae_requests; rq++,
		     i++) {
			FUNC0(&rq->req_list);
			if (!FUNC2(a, rq)) {
				FUNC4(
					"failed to allocate a VDA request!");
				return false;
			}

			FUNC9(rq, a);

			/* override the completion function */
			rq->comp_cb = esas2r_ae_complete;
		}
	}

	return true;
}