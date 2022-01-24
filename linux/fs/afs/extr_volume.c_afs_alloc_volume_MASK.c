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
struct afs_volume {size_t type; int /*<<< orphan*/  cell; struct afs_server_list* servers; int /*<<< orphan*/  name; int /*<<< orphan*/  cb_v_break_lock; int /*<<< orphan*/  servers_lock; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  usage; scalar_t__ name_len; int /*<<< orphan*/  type_force; scalar_t__ update_at; int /*<<< orphan*/  vid; } ;
struct afs_vldb_entry {int nr_servers; unsigned long* fs_mask; scalar_t__ name_len; int /*<<< orphan*/  name; int /*<<< orphan*/ * vid; } ;
struct afs_server_list {int /*<<< orphan*/  usage; } ;
struct afs_fs_context {size_t type; int /*<<< orphan*/  net; int /*<<< orphan*/  key; int /*<<< orphan*/  cell; int /*<<< orphan*/  force; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct afs_volume* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct afs_server_list*) ; 
 int FUNC3 (struct afs_server_list*) ; 
 struct afs_server_list* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct afs_vldb_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ afs_volume_record_life ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_volume*) ; 
 scalar_t__ FUNC9 () ; 
 struct afs_volume* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct afs_volume *FUNC14(struct afs_fs_context *params,
					   struct afs_vldb_entry *vldb,
					   unsigned long type_mask)
{
	struct afs_server_list *slist;
	struct afs_volume *volume;
	int ret = -ENOMEM, nr_servers = 0, i;

	for (i = 0; i < vldb->nr_servers; i++)
		if (vldb->fs_mask[i] & type_mask)
			nr_servers++;

	volume = FUNC10(sizeof(struct afs_volume), GFP_KERNEL);
	if (!volume)
		goto error_0;

	volume->vid		= vldb->vid[params->type];
	volume->update_at	= FUNC9() + afs_volume_record_life;
	volume->cell		= FUNC5(params->cell);
	volume->type		= params->type;
	volume->type_force	= params->force;
	volume->name_len	= vldb->name_len;

	FUNC7(&volume->usage, 1);
	FUNC1(&volume->proc_link);
	FUNC13(&volume->servers_lock);
	FUNC13(&volume->cb_v_break_lock);
	FUNC11(volume->name, vldb->name, vldb->name_len + 1);

	slist = FUNC4(params->cell, params->key, vldb, type_mask);
	if (FUNC2(slist)) {
		ret = FUNC3(slist);
		goto error_1;
	}

	FUNC12(&slist->usage, 1);
	volume->servers = slist;
	return volume;

error_1:
	FUNC6(params->net, volume->cell);
	FUNC8(volume);
error_0:
	return FUNC0(ret);
}