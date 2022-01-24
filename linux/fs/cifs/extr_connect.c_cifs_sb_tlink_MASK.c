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
struct tcon_link {struct tcon_link* tl_tcon; int /*<<< orphan*/  tl_flags; scalar_t__ tl_time; int /*<<< orphan*/  tl_uid; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  tlink_tree_lock; int /*<<< orphan*/  tlink_tree; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int CIFS_MOUNT_MULTIUSER ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 struct tcon_link* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TCON_LINK_IN_TREE ; 
 int /*<<< orphan*/  TCON_LINK_PENDING ; 
 scalar_t__ TLINK_ERROR_EXPIRE ; 
 struct tcon_link* FUNC2 (struct cifs_sb_info*,int /*<<< orphan*/ ) ; 
 struct tcon_link* FUNC3 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcon_link*) ; 
 struct tcon_link* FUNC5 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct tcon_link*) ; 
 struct tcon_link* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct tcon_link*) ; 
 struct tcon_link* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct tcon_link *
FUNC19(struct cifs_sb_info *cifs_sb)
{
	int ret;
	kuid_t fsuid = FUNC7();
	struct tcon_link *tlink, *newtlink;

	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER))
		return FUNC3(FUNC5(cifs_sb));

	FUNC11(&cifs_sb->tlink_tree_lock);
	tlink = FUNC16(&cifs_sb->tlink_tree, fsuid);
	if (tlink)
		FUNC3(tlink);
	FUNC12(&cifs_sb->tlink_tree_lock);

	if (tlink == NULL) {
		newtlink = FUNC9(sizeof(*tlink), GFP_KERNEL);
		if (newtlink == NULL)
			return FUNC0(-ENOMEM);
		newtlink->tl_uid = fsuid;
		newtlink->tl_tcon = FUNC0(-EACCES);
		FUNC10(TCON_LINK_PENDING, &newtlink->tl_flags);
		FUNC10(TCON_LINK_IN_TREE, &newtlink->tl_flags);
		FUNC3(newtlink);

		FUNC11(&cifs_sb->tlink_tree_lock);
		/* was one inserted after previous search? */
		tlink = FUNC16(&cifs_sb->tlink_tree, fsuid);
		if (tlink) {
			FUNC3(tlink);
			FUNC12(&cifs_sb->tlink_tree_lock);
			FUNC8(newtlink);
			goto wait_for_construction;
		}
		tlink = newtlink;
		FUNC15(&cifs_sb->tlink_tree, tlink);
		FUNC12(&cifs_sb->tlink_tree_lock);
	} else {
wait_for_construction:
		ret = FUNC17(&tlink->tl_flags, TCON_LINK_PENDING,
				  TASK_INTERRUPTIBLE);
		if (ret) {
			FUNC4(tlink);
			return FUNC0(-ERESTARTSYS);
		}

		/* if it's good, return it */
		if (!FUNC1(tlink->tl_tcon))
			return tlink;

		/* return error if we tried this already recently */
		if (FUNC14(jiffies, tlink->tl_time + TLINK_ERROR_EXPIRE)) {
			FUNC4(tlink);
			return FUNC0(-EACCES);
		}

		if (FUNC13(TCON_LINK_PENDING, &tlink->tl_flags))
			goto wait_for_construction;
	}

	tlink->tl_tcon = FUNC2(cifs_sb, fsuid);
	FUNC6(TCON_LINK_PENDING, &tlink->tl_flags);
	FUNC18(&tlink->tl_flags, TCON_LINK_PENDING);

	if (FUNC1(tlink->tl_tcon)) {
		FUNC4(tlink);
		return FUNC0(-EACCES);
	}

	return tlink;
}