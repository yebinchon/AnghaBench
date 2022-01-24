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
struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (struct block_device*) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev,
			     struct block_device *bdev,	sector_t capacity,
			     int geom[])
{
	unsigned char *p = FUNC1(bdev);

	if (p && p[65] == 0xaa && p[64] == 0x55 /* Partition table valid */
	    && p[4]) {	 /* Partition type */
		geom[0] = p[5] + 1;	/* heads */
		geom[1] = p[6] & 0x3f;	/* sectors */
	} else {
		if (capacity >= 0x7e0000) {
			geom[0] = 255;	/* heads */
			geom[1] = 63;	/* sectors */
		} else if (capacity >= 0x200000) {
			geom[0] = 128;	/* heads */
			geom[1] = 63;	/* sectors */
		} else {
			geom[0] = 64;	/* heads */
			geom[1] = 32;	/* sectors */
		}
	}
	geom[2] = FUNC2(capacity, geom[0] * geom[1]);
	FUNC0(p);

	return 0;
}