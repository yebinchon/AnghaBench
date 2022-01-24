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
struct socket {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,struct connection*) ; 
 int /*<<< orphan*/ ** dlm_local_addr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct connection* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct socket* FUNC3 (struct connection*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct socket *sock = NULL;
	struct connection *con = FUNC2(0, GFP_NOFS);
	int result = -EINVAL;

	if (!con)
		return -ENOMEM;

	/* We don't support multi-homed hosts */
	if (dlm_local_addr[1] != NULL) {
		FUNC1("TCP protocol can't handle multi-homed hosts, "
			  "try SCTP");
		return -EINVAL;
	}

	FUNC1("Using TCP for communications");

	sock = FUNC3(con, dlm_local_addr[0]);
	if (sock) {
		FUNC0(sock, con);
		result = 0;
	}
	else {
		result = -EADDRINUSE;
	}

	return result;
}