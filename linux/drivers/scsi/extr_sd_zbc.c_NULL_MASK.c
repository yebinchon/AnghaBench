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
struct scsi_disk {int /*<<< orphan*/  device; } ;
struct gendisk {int dummy; } ;
struct blk_zone {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned int FUNC2 (unsigned int,int) ; 
 struct scsi_disk* FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*) ; 
 unsigned char* FUNC5 (struct scsi_disk*,unsigned int,size_t*) ; 
 int FUNC6 (struct scsi_disk*,unsigned char*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_disk*,unsigned char*,struct blk_zone*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct gendisk *disk, sector_t sector,
			struct blk_zone *zones, unsigned int *nr_zones)
{
	struct scsi_disk *sdkp = FUNC3(disk);
	unsigned int i, nrz = *nr_zones;
	unsigned char *buf;
	size_t buflen = 0, offset = 0;
	int ret = 0;

	if (!FUNC4(sdkp))
		/* Not a zoned device */
		return -EOPNOTSUPP;

	buf = FUNC5(sdkp, nrz, &buflen);
	if (!buf)
		return -ENOMEM;

	ret = FUNC6(sdkp, buf, buflen,
			FUNC8(sdkp->device, sector), true);
	if (ret)
		goto out;

	nrz = FUNC2(nrz, FUNC0(&buf[0]) / 64);
	for (i = 0; i < nrz; i++) {
		offset += 64;
		FUNC7(sdkp, buf + offset, zones);
		zones++;
	}

	*nr_zones = nrz;

out:
	FUNC1(buf);

	return ret;
}