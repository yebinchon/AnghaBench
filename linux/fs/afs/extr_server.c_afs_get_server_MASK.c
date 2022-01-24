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
struct afs_server {int /*<<< orphan*/  usage; } ;
typedef  enum afs_server_trace { ____Placeholder_afs_server_trace } afs_server_trace ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_server*,unsigned int,int) ; 

struct afs_server *FUNC2(struct afs_server *server,
				  enum afs_server_trace reason)
{
	unsigned int u = FUNC0(&server->usage);

	FUNC1(server, u, reason);
	return server;
}