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
struct cifs_secmech {int /*<<< orphan*/  sdeschmacsha256; int /*<<< orphan*/  hmacsha256; int /*<<< orphan*/  sdesccmacaes; int /*<<< orphan*/  cmacaes; int /*<<< orphan*/  sdescsha512; int /*<<< orphan*/  sha512; } ;
struct TCP_Server_Info {struct cifs_secmech secmech; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(struct TCP_Server_Info *server)
{
	struct cifs_secmech *p = &server->secmech;
	int rc = 0;

	rc = FUNC0("hmac(sha256)",
			     &p->hmacsha256,
			     &p->sdeschmacsha256);
	if (rc)
		return rc;

	rc = FUNC0("cmac(aes)", &p->cmacaes, &p->sdesccmacaes);
	if (rc)
		goto err;

	rc = FUNC0("sha512", &p->sha512, &p->sdescsha512);
	if (rc)
		goto err;

	return 0;

err:
	FUNC1(&p->cmacaes, &p->sdesccmacaes);
	FUNC1(&p->hmacsha256, &p->sdeschmacsha256);
	return rc;
}