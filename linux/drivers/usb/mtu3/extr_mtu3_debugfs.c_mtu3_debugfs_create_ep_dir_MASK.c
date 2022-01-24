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
struct mtu3_file_map {int /*<<< orphan*/  name; } ;
struct mtu3_ep {int /*<<< orphan*/  mtu; int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtu3_file_map*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct dentry*,struct mtu3_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mtu3_ep*,struct dentry*) ; 
 struct mtu3_file_map* mtu3_ep_files ; 
 int /*<<< orphan*/  mtu3_ep_fops ; 

__attribute__((used)) static void FUNC4(struct mtu3_ep *mep,
				       struct dentry *parent)
{
	const struct mtu3_file_map *files;
	struct dentry *dir_ep;
	int i;

	dir_ep = FUNC1(mep->name, parent);
	FUNC3(mep->mtu, mep, dir_ep);

	for (i = 0; i < FUNC0(mtu3_ep_files); i++) {
		files = &mtu3_ep_files[i];

		FUNC2(files->name, 0444, dir_ep,
				    mep, &mtu3_ep_fops);
	}
}