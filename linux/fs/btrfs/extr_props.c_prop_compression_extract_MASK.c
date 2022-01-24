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
struct inode {int dummy; } ;
struct TYPE_2__ {int prop_compress; } ;

/* Variables and functions */
#define  BTRFS_COMPRESS_LZO 130 
#define  BTRFS_COMPRESS_ZLIB 129 
#define  BTRFS_COMPRESS_ZSTD 128 
 TYPE_1__* FUNC0 (struct inode*) ; 
 char const* FUNC1 (int) ; 

__attribute__((used)) static const char *FUNC2(struct inode *inode)
{
	switch (FUNC0(inode)->prop_compress) {
	case BTRFS_COMPRESS_ZLIB:
	case BTRFS_COMPRESS_LZO:
	case BTRFS_COMPRESS_ZSTD:
		return FUNC1(FUNC0(inode)->prop_compress);
	default:
		break;
	}

	return NULL;
}