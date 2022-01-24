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
struct cmd_priv {int /*<<< orphan*/  sctx_mutex; int /*<<< orphan*/  rsp_allocated_buf; int /*<<< orphan*/  cmd_allocated_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct	cmd_priv *pcmdpriv)
{
	if (pcmdpriv) {
		FUNC0(pcmdpriv->cmd_allocated_buf);

		FUNC0(pcmdpriv->rsp_allocated_buf);

		FUNC1(&pcmdpriv->sctx_mutex);
	}
}