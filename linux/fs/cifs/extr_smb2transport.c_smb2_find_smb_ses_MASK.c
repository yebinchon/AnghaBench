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
struct cifs_ses {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 struct cifs_ses* FUNC0 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct cifs_ses *
FUNC3(struct TCP_Server_Info *server, __u64 ses_id)
{
	struct cifs_ses *ses;

	FUNC1(&cifs_tcp_ses_lock);
	ses = FUNC0(server, ses_id);
	FUNC2(&cifs_tcp_ses_lock);

	return ses;
}