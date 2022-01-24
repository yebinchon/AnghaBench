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
struct cifs_credits {scalar_t__ value; } ;
struct TCP_Server_Info {int /*<<< orphan*/  request_q; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* add_credits ) (struct TCP_Server_Info*,struct cifs_credits const*,int const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*,struct cifs_credits const*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct TCP_Server_Info *server,
			const struct cifs_credits *credits, const int optype)
{
	if (credits->value) {
		server->ops->add_credits(server, credits, optype);
		FUNC1(&server->request_q);
	}
}