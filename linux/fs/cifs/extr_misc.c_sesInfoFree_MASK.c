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
struct TYPE_2__ {struct cifs_ses* response; } ;
struct cifs_ses {int /*<<< orphan*/  iface_list; TYPE_1__ auth_key; int /*<<< orphan*/  domainName; int /*<<< orphan*/  user_name; struct cifs_ses* password; int /*<<< orphan*/  serverNOS; int /*<<< orphan*/  serverDomain; int /*<<< orphan*/  serverOS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_ses*) ; 
 int /*<<< orphan*/  sesInfoAllocCount ; 

void
FUNC4(struct cifs_ses *buf_to_free)
{
	if (buf_to_free == NULL) {
		FUNC1(FYI, "Null buffer passed to sesInfoFree\n");
		return;
	}

	FUNC0(&sesInfoAllocCount);
	FUNC2(buf_to_free->serverOS);
	FUNC2(buf_to_free->serverDomain);
	FUNC2(buf_to_free->serverNOS);
	FUNC3(buf_to_free->password);
	FUNC2(buf_to_free->user_name);
	FUNC2(buf_to_free->domainName);
	FUNC3(buf_to_free->auth_key.response);
	FUNC2(buf_to_free->iface_list);
	FUNC3(buf_to_free);
}