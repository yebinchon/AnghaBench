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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int /*<<< orphan*/  sock; } ;
typedef  int /*<<< orphan*/  localaddr ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_SOCKOPT_BINDX_ADD ; 
 int /*<<< orphan*/  SOL_SCTP ; 
 int /*<<< orphan*/ * dlm_local_addr ; 
 int dlm_local_count ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct connection *con, uint16_t port)
{
	struct sockaddr_storage localaddr;
	int i, addr_len, result = 0;

	for (i = 0; i < dlm_local_count; i++) {
		FUNC4(&localaddr, dlm_local_addr[i], sizeof(localaddr));
		FUNC3(&localaddr, port, &addr_len);

		if (!i)
			result = FUNC0(con->sock,
					     (struct sockaddr *)&localaddr,
					     addr_len);
		else
			result = FUNC1(con->sock, SOL_SCTP,
						   SCTP_SOCKOPT_BINDX_ADD,
						   (char *)&localaddr, addr_len);

		if (result < 0) {
			FUNC2("Can't bind to %d addr number %d, %d.\n",
				  port, i + 1, result);
			break;
		}
	}
	return result;
}