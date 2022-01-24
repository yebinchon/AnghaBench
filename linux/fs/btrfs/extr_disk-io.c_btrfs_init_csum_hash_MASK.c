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
typedef  int /*<<< orphan*/  u16 ;
struct crypto_shash {int dummy; } ;
struct btrfs_fs_info {struct crypto_shash* csum_shash; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 struct crypto_shash* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct btrfs_fs_info *fs_info, u16 csum_type)
{
	struct crypto_shash *csum_shash;
	const char *csum_name = FUNC3(csum_type);

	csum_shash = FUNC4(csum_name, 0, 0);

	if (FUNC0(csum_shash)) {
		FUNC2(fs_info, "error allocating %s hash for checksum",
			  csum_name);
		return FUNC1(csum_shash);
	}

	fs_info->csum_shash = csum_shash;

	return 0;
}