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
struct z_erofs_vle_decompressed_index {int dummy; } ;
struct z_erofs_map_header {int dummy; } ;
struct erofs_xattr_ibody_header {int dummy; } ;
struct erofs_xattr_entry {int dummy; } ;
struct erofs_super_block {int dummy; } ;
struct erofs_inode_extended {int dummy; } ;
struct erofs_inode_compact {int dummy; } ;
struct erofs_dirent {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int Z_EROFS_VLE_CLUSTER_TYPE_MAX ; 
 int /*<<< orphan*/  Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS ; 

__attribute__((used)) static inline void FUNC2(void)
{
	FUNC1(sizeof(struct erofs_super_block) != 128);
	FUNC1(sizeof(struct erofs_inode_compact) != 32);
	FUNC1(sizeof(struct erofs_inode_extended) != 64);
	FUNC1(sizeof(struct erofs_xattr_ibody_header) != 12);
	FUNC1(sizeof(struct erofs_xattr_entry) != 4);
	FUNC1(sizeof(struct z_erofs_map_header) != 8);
	FUNC1(sizeof(struct z_erofs_vle_decompressed_index) != 8);
	FUNC1(sizeof(struct erofs_dirent) != 12);

	FUNC1(FUNC0(Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS) <
		     Z_EROFS_VLE_CLUSTER_TYPE_MAX - 1);
}