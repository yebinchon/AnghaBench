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
struct nvme_nvm_setbbtbl {int dummy; } ;
struct nvme_nvm_ph_rw {int dummy; } ;
struct nvme_nvm_identity {int dummy; } ;
struct nvme_nvm_id20_addrf {int dummy; } ;
struct nvme_nvm_id20 {int dummy; } ;
struct nvme_nvm_id12_grp {int dummy; } ;
struct nvme_nvm_id12_addrf {int dummy; } ;
struct nvme_nvm_id12 {int dummy; } ;
struct nvme_nvm_getbbtbl {int dummy; } ;
struct nvme_nvm_erase_blk {int dummy; } ;
struct nvme_nvm_chk_meta {int dummy; } ;
struct nvme_nvm_bb_tbl {int dummy; } ;
struct nvm_chk_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NVME_IDENTIFY_DATA_SIZE ; 

__attribute__((used)) static inline void FUNC1(void)
{
	FUNC0(sizeof(struct nvme_nvm_identity) != 64);
	FUNC0(sizeof(struct nvme_nvm_ph_rw) != 64);
	FUNC0(sizeof(struct nvme_nvm_erase_blk) != 64);
	FUNC0(sizeof(struct nvme_nvm_getbbtbl) != 64);
	FUNC0(sizeof(struct nvme_nvm_setbbtbl) != 64);
	FUNC0(sizeof(struct nvme_nvm_id12_grp) != 960);
	FUNC0(sizeof(struct nvme_nvm_id12_addrf) != 16);
	FUNC0(sizeof(struct nvme_nvm_id12) != NVME_IDENTIFY_DATA_SIZE);
	FUNC0(sizeof(struct nvme_nvm_bb_tbl) != 64);
	FUNC0(sizeof(struct nvme_nvm_id20_addrf) != 8);
	FUNC0(sizeof(struct nvme_nvm_id20) != NVME_IDENTIFY_DATA_SIZE);
	FUNC0(sizeof(struct nvme_nvm_chk_meta) != 32);
	FUNC0(sizeof(struct nvme_nvm_chk_meta) !=
						sizeof(struct nvm_chk_meta));
}