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
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhs_pkt*) ; 
 struct usbhs_pkt* FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*) ; 
 struct usbhs_fifo* FUNC6 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC7 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_priv*,unsigned long) ; 
 struct dma_chan* FUNC9 (struct usbhs_fifo*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC11 (struct usbhs_pipe*,struct usbhs_fifo*) ; 

struct usbhs_pkt *FUNC12(struct usbhs_pipe *pipe, struct usbhs_pkt *pkt)
{
	struct usbhs_priv *priv = FUNC7(pipe);
	struct usbhs_fifo *fifo = FUNC6(pipe);
	unsigned long flags;

	/********************  spin lock ********************/
	FUNC3(priv, flags);

	FUNC5(pipe);

	if (!pkt)
		pkt = FUNC1(pipe);

	if (pkt) {
		struct dma_chan *chan = NULL;

		if (fifo)
			chan = FUNC9(fifo, pkt);
		if (chan) {
			FUNC2(chan);
			FUNC10(pkt);
		}

		FUNC4(pipe, 0, 0);

		FUNC0(pkt);
	}

	if (fifo)
		FUNC11(pipe, fifo);

	FUNC8(priv, flags);
	/********************  spin unlock ******************/

	return pkt;
}