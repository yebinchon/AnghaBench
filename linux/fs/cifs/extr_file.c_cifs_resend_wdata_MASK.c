#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct cifs_credits {int dummy; } ;
struct cifs_writedata {unsigned int bytes; int /*<<< orphan*/  refcount; struct cifs_credits credits; int /*<<< orphan*/  list; TYPE_4__* cfile; } ;
struct cifs_aio_ctx {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ invalidHandle; int /*<<< orphan*/  tlink; } ;
struct TYPE_7__ {TYPE_1__* ses; } ;
struct TYPE_6__ {int (* wait_mtu_credits ) (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ;int (* async_writev ) (struct cifs_writedata*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*,struct cifs_credits*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct TCP_Server_Info*,struct cifs_credits*,unsigned int) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  cifs_uncached_writedata_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ; 
 int FUNC7 (struct cifs_writedata*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct cifs_writedata *wdata, struct list_head *wdata_list,
	struct cifs_aio_ctx *ctx)
{
	unsigned int wsize;
	struct cifs_credits credits;
	int rc;
	struct TCP_Server_Info *server =
		FUNC8(wdata->cfile->tlink)->ses->server;

	do {
		if (wdata->cfile->invalidHandle) {
			rc = FUNC2(wdata->cfile, false);
			if (rc == -EAGAIN)
				continue;
			else if (rc)
				break;
		}


		/*
		 * Wait for credits to resend this wdata.
		 * Note: we are attempting to resend the whole wdata not in
		 * segments
		 */
		do {
			rc = server->ops->wait_mtu_credits(server, wdata->bytes,
						&wsize, &credits);
			if (rc)
				goto fail;

			if (wsize < wdata->bytes) {
				FUNC0(server, &credits, 0);
				FUNC5(1000);
			}
		} while (wsize < wdata->bytes);
		wdata->credits = credits;

		rc = FUNC1(server, &wdata->credits, wdata->bytes);

		if (!rc) {
			if (wdata->cfile->invalidHandle)
				rc = -EAGAIN;
			else
				rc = server->ops->async_writev(wdata,
					cifs_uncached_writedata_release);
		}

		/* If the write was successfully sent, we are done */
		if (!rc) {
			FUNC4(&wdata->list, wdata_list);
			return 0;
		}

		/* Roll back credits and retry if needed */
		FUNC0(server, &wdata->credits, 0);
	} while (rc == -EAGAIN);

fail:
	FUNC3(&wdata->refcount, cifs_uncached_writedata_release);
	return rc;
}