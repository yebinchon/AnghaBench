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
struct adv_dvc_var {int max_host_qng; scalar_t__ chip_type; int err_code; void* carrier; int /*<<< orphan*/  carrier_addr; } ;
struct TYPE_2__ {struct adv_dvc_var adv_dvc_var; } ;
struct asc_board {int adv_reqp_size; int /*<<< orphan*/  adv_sgblk_pool; int /*<<< orphan*/  dev; void* adv_reqp; int /*<<< orphan*/  adv_reqp_addr; TYPE_1__ dvc_var; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  adv_sgblk_t ;
typedef  int /*<<< orphan*/  adv_req_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ADV_CARRIER_BUFSIZE ; 
 scalar_t__ ADV_CHIP_ASC3550 ; 
 scalar_t__ ADV_CHIP_ASC38C0800 ; 
 int ADV_ERROR ; 
 int ADV_TOT_SG_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (struct adv_dvc_var*) ; 
 int FUNC3 (struct adv_dvc_var*) ; 
 int FUNC4 (struct adv_dvc_var*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 struct asc_board* FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC9(struct Scsi_Host *shost)
{
	struct asc_board *board = FUNC8(shost);
	struct adv_dvc_var *adv_dvc = &board->dvc_var.adv_dvc_var;
	size_t sgblk_pool_size;
	int warn_code, err_code;

	/*
	 * Allocate buffer carrier structures. The total size
	 * is about 8 KB, so allocate all at once.
	 */
	adv_dvc->carrier = FUNC5(board->dev,
		ADV_CARRIER_BUFSIZE, &adv_dvc->carrier_addr, GFP_KERNEL);
	FUNC1(1, "carrier 0x%p\n", adv_dvc->carrier);

	if (!adv_dvc->carrier)
		goto kmalloc_failed;

	/*
	 * Allocate up to 'max_host_qng' request structures for the Wide
	 * board. The total size is about 16 KB, so allocate all at once.
	 * If the allocation fails decrement and try again.
	 */
	board->adv_reqp_size = adv_dvc->max_host_qng * sizeof(adv_req_t);
	if (board->adv_reqp_size & 0x1f) {
		FUNC1(1, "unaligned reqp %lu bytes\n", sizeof(adv_req_t));
		board->adv_reqp_size = FUNC0(board->adv_reqp_size);
	}
	board->adv_reqp = FUNC5(board->dev, board->adv_reqp_size,
		&board->adv_reqp_addr, GFP_KERNEL);

	if (!board->adv_reqp)
		goto kmalloc_failed;

	FUNC1(1, "reqp 0x%p, req_cnt %d, bytes %lu\n", board->adv_reqp,
		adv_dvc->max_host_qng, board->adv_reqp_size);

	/*
	 * Allocate up to ADV_TOT_SG_BLOCK request structures for
	 * the Wide board. Each structure is about 136 bytes.
	 */
	sgblk_pool_size = sizeof(adv_sgblk_t) * ADV_TOT_SG_BLOCK;
	board->adv_sgblk_pool = FUNC6("adv_sgblk", board->dev,
						sgblk_pool_size, 32, 0);

	FUNC1(1, "sg_cnt %d * %lu = %lu bytes\n", ADV_TOT_SG_BLOCK,
		sizeof(adv_sgblk_t), sgblk_pool_size);

	if (!board->adv_sgblk_pool)
		goto kmalloc_failed;

	if (adv_dvc->chip_type == ADV_CHIP_ASC3550) {
		FUNC1(2, "AdvInitAsc3550Driver()\n");
		warn_code = FUNC2(adv_dvc);
	} else if (adv_dvc->chip_type == ADV_CHIP_ASC38C0800) {
		FUNC1(2, "AdvInitAsc38C0800Driver()\n");
		warn_code = FUNC3(adv_dvc);
	} else {
		FUNC1(2, "AdvInitAsc38C1600Driver()\n");
		warn_code = FUNC4(adv_dvc);
	}
	err_code = adv_dvc->err_code;

	if (warn_code || err_code) {
		FUNC7(KERN_WARNING, shost, "error: warn 0x%x, error "
			"0x%x\n", warn_code, err_code);
	}

	goto exit;

 kmalloc_failed:
	FUNC7(KERN_ERR, shost, "error: kmalloc() failed\n");
	err_code = ADV_ERROR;
 exit:
	return err_code;
}