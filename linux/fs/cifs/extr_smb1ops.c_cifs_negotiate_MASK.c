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
struct cifs_ses {int /*<<< orphan*/  server; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const,struct cifs_ses*) ; 
 int EAGAIN ; 
 int EHOSTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(const unsigned int xid, struct cifs_ses *ses)
{
	int rc;
	rc = FUNC0(xid, ses);
	if (rc == -EAGAIN) {
		/* retry only once on 1st time connection */
		FUNC1(ses->server, 1);
		rc = FUNC0(xid, ses);
		if (rc == -EAGAIN)
			rc = -EHOSTDOWN;
	}
	return rc;
}