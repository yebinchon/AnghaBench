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
struct seq_file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct adfs_sb_info {scalar_t__ s_owner_mask; scalar_t__ s_other_mask; scalar_t__ s_ftsuffix; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;

/* Variables and functions */
 scalar_t__ ADFS_DEFAULT_OTHER_MASK ; 
 scalar_t__ ADFS_DEFAULT_OWNER_MASK ; 
 struct adfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, struct dentry *root)
{
	struct adfs_sb_info *asb = FUNC0(root->d_sb);

	if (!FUNC5(asb->s_uid, GLOBAL_ROOT_UID))
		FUNC4(seq, ",uid=%u", FUNC2(&init_user_ns, asb->s_uid));
	if (!FUNC3(asb->s_gid, GLOBAL_ROOT_GID))
		FUNC4(seq, ",gid=%u", FUNC1(&init_user_ns, asb->s_gid));
	if (asb->s_owner_mask != ADFS_DEFAULT_OWNER_MASK)
		FUNC4(seq, ",ownmask=%o", asb->s_owner_mask);
	if (asb->s_other_mask != ADFS_DEFAULT_OTHER_MASK)
		FUNC4(seq, ",othmask=%o", asb->s_other_mask);
	if (asb->s_ftsuffix != 0)
		FUNC4(seq, ",ftsuffix=%u", asb->s_ftsuffix);

	return 0;
}