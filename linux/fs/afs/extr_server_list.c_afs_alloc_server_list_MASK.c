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
typedef  int u8 ;
struct key {int dummy; } ;
struct afs_vldb_entry {int nr_servers; int* fs_mask; int /*<<< orphan*/ * fs_server; } ;
struct afs_server_list {int nr_servers; TYPE_1__* servers; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;
struct afs_server_entry {int dummy; } ;
struct afs_server {int /*<<< orphan*/  uuid; } ;
struct afs_cell {int /*<<< orphan*/  net; } ;
struct TYPE_3__ {struct afs_server* server; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int ENOENT ; 
 int ENOMEDIUM ; 
 int ENOMEM ; 
 struct afs_server_list* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct afs_server*) ; 
 int FUNC2 (struct afs_server*) ; 
 struct afs_server* FUNC3 (struct afs_cell*,struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct afs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct afs_server_list*) ; 
 int /*<<< orphan*/  afs_server_trace_put_slist_isort ; 
 struct afs_server_list* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  servers ; 
 int /*<<< orphan*/  FUNC11 (struct afs_server_list*,int /*<<< orphan*/ ,int) ; 

struct afs_server_list *FUNC12(struct afs_cell *cell,
					      struct key *key,
					      struct afs_vldb_entry *vldb,
					      u8 type_mask)
{
	struct afs_server_list *slist;
	struct afs_server *server;
	int ret = -ENOMEM, nr_servers = 0, i, j;

	for (i = 0; i < vldb->nr_servers; i++)
		if (vldb->fs_mask[i] & type_mask)
			nr_servers++;

	slist = FUNC6(FUNC11(slist, servers, nr_servers), GFP_KERNEL);
	if (!slist)
		goto error;

	FUNC9(&slist->usage, 1);
	FUNC10(&slist->lock);

	/* Make sure a records exists for each server in the list. */
	for (i = 0; i < vldb->nr_servers; i++) {
		if (!(vldb->fs_mask[i] & type_mask))
			continue;

		server = FUNC3(cell, key, &vldb->fs_server[i]);
		if (FUNC1(server)) {
			ret = FUNC2(server);
			if (ret == -ENOENT ||
			    ret == -ENOMEDIUM)
				continue;
			goto error_2;
		}

		/* Insertion-sort by UUID */
		for (j = 0; j < slist->nr_servers; j++)
			if (FUNC7(&slist->servers[j].server->uuid,
				   &server->uuid,
				   sizeof(server->uuid)) >= 0)
				break;
		if (j < slist->nr_servers) {
			if (slist->servers[j].server == server) {
				FUNC4(cell->net, server,
					       afs_server_trace_put_slist_isort);
				continue;
			}

			FUNC8(slist->servers + j + 1,
				slist->servers + j,
				(slist->nr_servers - j) * sizeof(struct afs_server_entry));
		}

		slist->servers[j].server = server;
		slist->nr_servers++;
	}

	if (slist->nr_servers == 0) {
		ret = -EDESTADDRREQ;
		goto error_2;
	}

	return slist;

error_2:
	FUNC5(cell->net, slist);
error:
	return FUNC0(ret);
}