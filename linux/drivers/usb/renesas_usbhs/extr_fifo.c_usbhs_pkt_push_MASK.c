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
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int length; int zero; void (* done ) (struct usbhs_priv*,struct usbhs_pkt*) ;int sequence; scalar_t__ actual; int /*<<< orphan*/ * handler; void* buf; struct usbhs_pipe* pipe; int /*<<< orphan*/  node; } ;
struct usbhs_pipe {int /*<<< orphan*/ * handler; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,unsigned long) ; 
 struct usbhs_priv* FUNC3 (struct usbhs_pipe*) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  usbhsf_null_handler ; 

void FUNC6(struct usbhs_pipe *pipe, struct usbhs_pkt *pkt,
		    void (*done)(struct usbhs_priv *priv,
				 struct usbhs_pkt *pkt),
		    void *buf, int len, int zero, int sequence)
{
	struct usbhs_priv *priv = FUNC3(pipe);
	struct device *dev = FUNC4(priv);
	unsigned long flags;

	if (!done) {
		FUNC0(dev, "no done function\n");
		return;
	}

	/********************  spin lock ********************/
	FUNC2(priv, flags);

	if (!pipe->handler) {
		FUNC0(dev, "no handler function\n");
		pipe->handler = &usbhsf_null_handler;
	}

	FUNC1(&pkt->node, &pipe->list);

	/*
	 * each pkt must hold own handler.
	 * because handler might be changed by its situation.
	 * dma handler -> pio handler.
	 */
	pkt->pipe	= pipe;
	pkt->buf	= buf;
	pkt->handler	= pipe->handler;
	pkt->length	= len;
	pkt->zero	= zero;
	pkt->actual	= 0;
	pkt->done	= done;
	pkt->sequence	= sequence;

	FUNC5(priv, flags);
	/********************  spin unlock ******************/
}