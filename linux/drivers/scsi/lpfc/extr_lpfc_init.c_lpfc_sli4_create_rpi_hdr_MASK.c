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
typedef  scalar_t__ uint16_t ;
struct lpfc_rpi_hdr {int page_count; scalar_t__ next_rpi; int /*<<< orphan*/  list; scalar_t__ start_rpi; int /*<<< orphan*/  len; struct lpfc_dmabuf* dmabuf; } ;
struct TYPE_4__ {scalar_t__ max_rpi; } ;
struct TYPE_5__ {scalar_t__ next_rpi; int /*<<< orphan*/  lpfc_rpi_hdr_list; TYPE_1__ max_cfg_param; scalar_t__ extents_in_use; int /*<<< orphan*/  rpi_hdrs_in_use; } ;
struct lpfc_hba {TYPE_3__* pcidev; int /*<<< orphan*/  hbalock; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPFC_HDR_TEMPLATE_SIZE ; 
 scalar_t__ LPFC_RPI_HDR_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_dmabuf*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct lpfc_rpi_hdr *
FUNC8(struct lpfc_hba *phba)
{
	uint16_t rpi_limit, curr_rpi_range;
	struct lpfc_dmabuf *dmabuf;
	struct lpfc_rpi_hdr *rpi_hdr;

	/*
	 * If the SLI4 port supports extents, posting the rpi header isn't
	 * required.  Set the expected maximum count and let the actual value
	 * get set when extents are fully allocated.
	 */
	if (!phba->sli4_hba.rpi_hdrs_in_use)
		return NULL;
	if (phba->sli4_hba.extents_in_use)
		return NULL;

	/* The limit on the logical index is just the max_rpi count. */
	rpi_limit = phba->sli4_hba.max_cfg_param.max_rpi;

	FUNC6(&phba->hbalock);
	/*
	 * Establish the starting RPI in this header block.  The starting
	 * rpi is normalized to a zero base because the physical rpi is
	 * port based.
	 */
	curr_rpi_range = phba->sli4_hba.next_rpi;
	FUNC7(&phba->hbalock);

	/* Reached full RPI range */
	if (curr_rpi_range == rpi_limit)
		return NULL;

	/*
	 * First allocate the protocol header region for the port.  The
	 * port expects a 4KB DMA-mapped memory region that is 4K aligned.
	 */
	dmabuf = FUNC4(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!dmabuf)
		return NULL;

	dmabuf->virt = FUNC1(&phba->pcidev->dev,
					  LPFC_HDR_TEMPLATE_SIZE,
					  &dmabuf->phys, GFP_KERNEL);
	if (!dmabuf->virt) {
		rpi_hdr = NULL;
		goto err_free_dmabuf;
	}

	if (!FUNC0(dmabuf->phys, LPFC_HDR_TEMPLATE_SIZE)) {
		rpi_hdr = NULL;
		goto err_free_coherent;
	}

	/* Save the rpi header data for cleanup later. */
	rpi_hdr = FUNC4(sizeof(struct lpfc_rpi_hdr), GFP_KERNEL);
	if (!rpi_hdr)
		goto err_free_coherent;

	rpi_hdr->dmabuf = dmabuf;
	rpi_hdr->len = LPFC_HDR_TEMPLATE_SIZE;
	rpi_hdr->page_count = 1;
	FUNC6(&phba->hbalock);

	/* The rpi_hdr stores the logical index only. */
	rpi_hdr->start_rpi = curr_rpi_range;
	rpi_hdr->next_rpi = phba->sli4_hba.next_rpi + LPFC_RPI_HDR_COUNT;
	FUNC5(&rpi_hdr->list, &phba->sli4_hba.lpfc_rpi_hdr_list);

	FUNC7(&phba->hbalock);
	return rpi_hdr;

 err_free_coherent:
	FUNC2(&phba->pcidev->dev, LPFC_HDR_TEMPLATE_SIZE,
			  dmabuf->virt, dmabuf->phys);
 err_free_dmabuf:
	FUNC3(dmabuf);
	return NULL;
}