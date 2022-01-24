#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct utp_transfer_req_desc {int dummy; } ;
struct utp_transfer_cmd_desc {int dummy; } ;
struct utp_task_req_desc {int dummy; } ;
struct ufshcd_lrb {int dummy; } ;
struct ufs_hba {int nutrs; int ucdl_dma_addr; int utrdl_dma_addr; int nutmrs; int utmrdl_dma_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  lrb; void* utmrdl_base_addr; void* utrdl_base_addr; void* ucdl_base_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ufs_hba *hba)
{
	size_t utmrdl_size, utrdl_size, ucdl_size;

	/* Allocate memory for UTP command descriptors */
	ucdl_size = (sizeof(struct utp_transfer_cmd_desc) * hba->nutrs);
	hba->ucdl_base_addr = FUNC3(hba->dev,
						  ucdl_size,
						  &hba->ucdl_dma_addr,
						  GFP_KERNEL);

	/*
	 * UFSHCI requires UTP command descriptor to be 128 byte aligned.
	 * make sure hba->ucdl_dma_addr is aligned to PAGE_SIZE
	 * if hba->ucdl_dma_addr is aligned to PAGE_SIZE, then it will
	 * be aligned to 128 bytes as well
	 */
	if (!hba->ucdl_base_addr ||
	    FUNC0(hba->ucdl_dma_addr & (PAGE_SIZE - 1))) {
		FUNC1(hba->dev,
			"Command Descriptor Memory allocation failed\n");
		goto out;
	}

	/*
	 * Allocate memory for UTP Transfer descriptors
	 * UFSHCI requires 1024 byte alignment of UTRD
	 */
	utrdl_size = (sizeof(struct utp_transfer_req_desc) * hba->nutrs);
	hba->utrdl_base_addr = FUNC3(hba->dev,
						   utrdl_size,
						   &hba->utrdl_dma_addr,
						   GFP_KERNEL);
	if (!hba->utrdl_base_addr ||
	    FUNC0(hba->utrdl_dma_addr & (PAGE_SIZE - 1))) {
		FUNC1(hba->dev,
			"Transfer Descriptor Memory allocation failed\n");
		goto out;
	}

	/*
	 * Allocate memory for UTP Task Management descriptors
	 * UFSHCI requires 1024 byte alignment of UTMRD
	 */
	utmrdl_size = sizeof(struct utp_task_req_desc) * hba->nutmrs;
	hba->utmrdl_base_addr = FUNC3(hba->dev,
						    utmrdl_size,
						    &hba->utmrdl_dma_addr,
						    GFP_KERNEL);
	if (!hba->utmrdl_base_addr ||
	    FUNC0(hba->utmrdl_dma_addr & (PAGE_SIZE - 1))) {
		FUNC1(hba->dev,
		"Task Management Descriptor Memory allocation failed\n");
		goto out;
	}

	/* Allocate memory for local reference block */
	hba->lrb = FUNC2(hba->dev,
				hba->nutrs, sizeof(struct ufshcd_lrb),
				GFP_KERNEL);
	if (!hba->lrb) {
		FUNC1(hba->dev, "LRB Memory allocation failed\n");
		goto out;
	}
	return 0;
out:
	return -ENOMEM;
}