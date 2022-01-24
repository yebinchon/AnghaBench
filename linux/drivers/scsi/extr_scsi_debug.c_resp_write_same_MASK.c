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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct scsi_cmnd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  atomic_rw ; 
 int FUNC0 (struct scsi_cmnd*,int,int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fake_storep ; 
 int FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_name ; 
 scalar_t__ FUNC6 () ; 
 int sdebug_sector_size ; 
 int /*<<< orphan*/  sdebug_store_sectors ; 
 scalar_t__ sdebug_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *scp, u64 lba, u32 num,
			   u32 ei_lba, bool unmap, bool ndob)
{
	int ret;
	unsigned long iflags;
	unsigned long long i;
	u32 lb_size = sdebug_sector_size;
	u64 block, lbaa;
	u8 *fs1p;

	ret = FUNC0(scp, lba, num, true);
	if (ret)
		return ret;

	FUNC9(&atomic_rw, iflags);

	if (unmap && FUNC6()) {
		FUNC8(lba, num);
		goto out;
	}
	lbaa = lba;
	block = FUNC1(lbaa, sdebug_store_sectors);
	/* if ndob then zero 1 logical block, else fetch 1 logical block */
	fs1p = fake_storep + (block * lb_size);
	if (ndob) {
		FUNC5(fs1p, 0, lb_size);
		ret = 0;
	} else
		ret = FUNC2(scp, fs1p, lb_size);

	if (-1 == ret) {
		FUNC10(&atomic_rw, iflags);
		return DID_ERROR << 16;
	} else if (sdebug_verbose && !ndob && (ret < lb_size))
		FUNC7(KERN_INFO, scp->device,
			    "%s: %s: lb size=%u, IO sent=%d bytes\n",
			    my_name, "write same", lb_size, ret);

	/* Copy first sector to remaining blocks */
	for (i = 1 ; i < num ; i++) {
		lbaa = lba + i;
		block = FUNC1(lbaa, sdebug_store_sectors);
		FUNC4(fake_storep + (block * lb_size), fs1p, lb_size);
	}
	if (FUNC6())
		FUNC3(lba, num);
out:
	FUNC10(&atomic_rw, iflags);

	return 0;
}