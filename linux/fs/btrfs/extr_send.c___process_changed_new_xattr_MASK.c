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
struct send_ctx {int /*<<< orphan*/  cmp_key; int /*<<< orphan*/  right_path; int /*<<< orphan*/  parent_root; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int,struct btrfs_key*,char const*,int,char const*,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC4(int num, struct btrfs_key *di_key,
				       const char *name, int name_len,
				       const char *data, int data_len,
				       u8 type, void *ctx)
{
	int ret;
	struct send_ctx *sctx = ctx;
	char *found_data = NULL;
	int found_data_len  = 0;

	ret = FUNC1(sctx->parent_root, sctx->right_path,
			 sctx->cmp_key, name, name_len, &found_data,
			 &found_data_len);
	if (ret == -ENOENT) {
		ret = FUNC0(num, di_key, name, name_len, data,
				data_len, type, ctx);
	} else if (ret >= 0) {
		if (data_len != found_data_len ||
		    FUNC3(data, found_data, data_len)) {
			ret = FUNC0(num, di_key, name, name_len,
					data, data_len, type, ctx);
		} else {
			ret = 0;
		}
	}

	FUNC2(found_data);
	return ret;
}