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
struct TYPE_2__ {int /*<<< orphan*/ * sdescsha512; int /*<<< orphan*/ * sdescmd5; int /*<<< orphan*/ * sdeschmacmd5; int /*<<< orphan*/ * sdeschmacsha256; int /*<<< orphan*/ * sdesccmacaes; int /*<<< orphan*/ * ccmaesdecrypt; int /*<<< orphan*/ * ccmaesencrypt; int /*<<< orphan*/ * hmacmd5; int /*<<< orphan*/ * sha512; int /*<<< orphan*/ * md5; int /*<<< orphan*/ * hmacsha256; int /*<<< orphan*/ * cmacaes; } ;
struct TCP_Server_Info {TYPE_1__ secmech; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct TCP_Server_Info *server)
{
	if (server->secmech.cmacaes) {
		FUNC1(server->secmech.cmacaes);
		server->secmech.cmacaes = NULL;
	}

	if (server->secmech.hmacsha256) {
		FUNC1(server->secmech.hmacsha256);
		server->secmech.hmacsha256 = NULL;
	}

	if (server->secmech.md5) {
		FUNC1(server->secmech.md5);
		server->secmech.md5 = NULL;
	}

	if (server->secmech.sha512) {
		FUNC1(server->secmech.sha512);
		server->secmech.sha512 = NULL;
	}

	if (server->secmech.hmacmd5) {
		FUNC1(server->secmech.hmacmd5);
		server->secmech.hmacmd5 = NULL;
	}

	if (server->secmech.ccmaesencrypt) {
		FUNC0(server->secmech.ccmaesencrypt);
		server->secmech.ccmaesencrypt = NULL;
	}

	if (server->secmech.ccmaesdecrypt) {
		FUNC0(server->secmech.ccmaesdecrypt);
		server->secmech.ccmaesdecrypt = NULL;
	}

	FUNC2(server->secmech.sdesccmacaes);
	server->secmech.sdesccmacaes = NULL;
	FUNC2(server->secmech.sdeschmacsha256);
	server->secmech.sdeschmacsha256 = NULL;
	FUNC2(server->secmech.sdeschmacmd5);
	server->secmech.sdeschmacmd5 = NULL;
	FUNC2(server->secmech.sdescmd5);
	server->secmech.sdescmd5 = NULL;
	FUNC2(server->secmech.sdescsha512);
	server->secmech.sdescsha512 = NULL;
}