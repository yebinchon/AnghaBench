#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {TYPE_1__ dstaddr; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  CIFS_PORT ; 
 int /*<<< orphan*/  RFC1001_PORT ; 
 int FUNC0 (struct TCP_Server_Info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct TCP_Server_Info *server)
{
	__be16 *sport;
	struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;
	struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;

	if (server->dstaddr.ss_family == AF_INET6)
		sport = &addr6->sin6_port;
	else
		sport = &addr->sin_port;

	if (*sport == 0) {
		int rc;

		/* try with 445 port at first */
		*sport = FUNC1(CIFS_PORT);

		rc = FUNC0(server);
		if (rc >= 0)
			return rc;

		/* if it failed, try with 139 port */
		*sport = FUNC1(RFC1001_PORT);
	}

	return FUNC0(server);
}