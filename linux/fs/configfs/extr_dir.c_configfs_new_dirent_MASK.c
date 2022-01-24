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
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_children; int /*<<< orphan*/  s_sibling; int /*<<< orphan*/  s_frag; void* s_element; int /*<<< orphan*/  s_count; } ;

/* Variables and functions */
 int CONFIGFS_USET_DROPPING ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct configfs_dirent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  configfs_dir_cachep ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct configfs_dirent*) ; 
 struct configfs_dirent* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct configfs_dirent *FUNC10(struct configfs_dirent *parent_sd,
						   void *element, int type,
						   struct configfs_fragment *frag)
{
	struct configfs_dirent * sd;

	sd = FUNC6(configfs_dir_cachep, GFP_KERNEL);
	if (!sd)
		return FUNC0(-ENOMEM);

	FUNC2(&sd->s_count, 1);
	FUNC1(&sd->s_children);
	sd->s_element = element;
	sd->s_type = type;
	FUNC3(sd);
	FUNC8(&configfs_dirent_lock);
	if (parent_sd->s_type & CONFIGFS_USET_DROPPING) {
		FUNC9(&configfs_dirent_lock);
		FUNC5(configfs_dir_cachep, sd);
		return FUNC0(-ENOENT);
	}
	sd->s_frag = FUNC4(frag);
	FUNC7(&sd->s_sibling, &parent_sd->s_children);
	FUNC9(&configfs_dirent_lock);

	return sd;
}