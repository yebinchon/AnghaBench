#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct olpc_xo175_ec* context; int /*<<< orphan*/  complete; } ;
struct TYPE_6__ {size_t len; } ;
struct olpc_xo175_ec {TYPE_3__* spi; TYPE_1__ msg; TYPE_2__ xfer; int /*<<< orphan*/  tx_buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  olpc_xo175_ec_complete ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC4(struct olpc_xo175_ec *priv, void *cmd,
								size_t cmdlen)
{
	int ret;

	FUNC1(&priv->tx_buf, cmd, cmdlen);
	priv->xfer.len = cmdlen;

	FUNC3(&priv->msg, &priv->xfer, 1);

	priv->msg.complete = olpc_xo175_ec_complete;
	priv->msg.context = priv;

	ret = FUNC2(priv->spi, &priv->msg);
	if (ret)
		FUNC0(&priv->spi->dev, "spi_async() failed %d\n", ret);
}