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
struct TYPE_2__ {scalar_t__ buf; } ;
struct eg20t_port {TYPE_1__ rxbuf; int /*<<< orphan*/  port; int /*<<< orphan*/  debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  pch_uart_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct eg20t_port *priv)
{

#ifdef CONFIG_DEBUG_FS
	debugfs_remove(priv->debugfs);
#endif
	FUNC2(&pch_uart_driver, &priv->port);
	FUNC1((unsigned long)priv->rxbuf.buf);
}