#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct afs_volume {scalar_t__ name_len; int type; TYPE_1__* cell; int /*<<< orphan*/  servers_lock; int /*<<< orphan*/  flags; scalar_t__ update_at; scalar_t__ servers_seq; struct afs_vldb_entry* servers; int /*<<< orphan*/  name; int /*<<< orphan*/  vid; } ;
struct afs_vldb_entry {scalar_t__ name_len; scalar_t__ seq; int /*<<< orphan*/  name; } ;
struct afs_server_list {scalar_t__ name_len; scalar_t__ seq; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_MAXVOLNAME ; 
 int /*<<< orphan*/  AFS_VOLUME_NEEDS_UPDATE ; 
 scalar_t__ FUNC0 (struct afs_vldb_entry*) ; 
 int FUNC1 (struct afs_vldb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct afs_vldb_entry* FUNC4 (TYPE_1__*,struct key*,struct afs_vldb_entry*,int) ; 
 scalar_t__ FUNC5 (struct afs_vldb_entry*,struct afs_vldb_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct afs_vldb_entry*) ; 
 struct afs_vldb_entry* FUNC7 (TYPE_1__*,struct key*,char*,int) ; 
 scalar_t__ afs_volume_record_life ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_vldb_entry*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct afs_volume *volume, struct key *key)
{
	struct afs_server_list *new, *old, *discard;
	struct afs_vldb_entry *vldb;
	char idbuf[16];
	int ret, idsz;

	FUNC2("");

	/* We look up an ID by passing it as a decimal string in the
	 * operation's name parameter.
	 */
	idsz = FUNC14(idbuf, "%llu", volume->vid);

	vldb = FUNC7(volume->cell, key, idbuf, idsz);
	if (FUNC0(vldb)) {
		ret = FUNC1(vldb);
		goto error;
	}

	/* See if the volume got renamed. */
	if (vldb->name_len != volume->name_len ||
	    FUNC11(vldb->name, volume->name, vldb->name_len) != 0) {
		/* TODO: Use RCU'd string. */
		FUNC12(volume->name, vldb->name, AFS_MAXVOLNAME);
		volume->name_len = vldb->name_len;
	}

	/* See if the volume's server list got updated. */
	new = FUNC4(volume->cell, key,
				    vldb, (1 << volume->type));
	if (FUNC0(new)) {
		ret = FUNC1(new);
		goto error_vldb;
	}

	FUNC15(&volume->servers_lock);

	discard = new;
	old = volume->servers;
	if (FUNC5(new, old)) {
		new->seq = volume->servers_seq + 1;
		volume->servers = new;
		FUNC13();
		volume->servers_seq++;
		discard = old;
	}

	volume->update_at = FUNC10() + afs_volume_record_life;
	FUNC8(AFS_VOLUME_NEEDS_UPDATE, &volume->flags);
	FUNC16(&volume->servers_lock);
	ret = 0;

	FUNC6(volume->cell->net, discard);
error_vldb:
	FUNC9(vldb);
error:
	FUNC3(" = %d", ret);
	return ret;
}