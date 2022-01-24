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
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int /*<<< orphan*/  (* done ) (struct usbhs_priv*,struct usbhs_pkt*) ;TYPE_1__* handler; } ;
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;int (* try_run ) (struct usbhs_pkt*,int*) ;int (* dma_done ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
#define  USBHSF_PKT_DMA_DONE 130 
#define  USBHSF_PKT_PREPARE 129 
#define  USBHSF_PKT_TRY_RUN 128 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pkt*) ; 
 struct usbhs_pkt* FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (int (*) (struct usbhs_pkt*,int*)) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,unsigned long) ; 
 struct usbhs_priv* FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*) ; 
 struct device* FUNC8 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_priv*,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct usbhs_pipe *pipe, int type)
{
	struct usbhs_priv *priv = FUNC6(pipe);
	struct usbhs_pkt *pkt;
	struct device *dev = FUNC8(priv);
	int (*func)(struct usbhs_pkt *pkt, int *is_done);
	unsigned long flags;
	int ret = 0;
	int is_done = 0;

	/********************  spin lock ********************/
	FUNC5(priv, flags);

	pkt = FUNC1(pipe);
	if (!pkt)
		goto __usbhs_pkt_handler_end;

	switch (type) {
	case USBHSF_PKT_PREPARE:
		func = pkt->handler->prepare;
		break;
	case USBHSF_PKT_TRY_RUN:
		func = pkt->handler->try_run;
		break;
	case USBHSF_PKT_DMA_DONE:
		func = pkt->handler->dma_done;
		break;
	default:
		FUNC2(dev, "unknown pkt handler\n");
		goto __usbhs_pkt_handler_end;
	}

	if (FUNC3(func))
		ret = func(pkt, &is_done);

	if (is_done)
		FUNC0(pkt);

__usbhs_pkt_handler_end:
	FUNC9(priv, flags);
	/********************  spin unlock ******************/

	if (is_done) {
		pkt->done(priv, pkt);
		FUNC7(pipe);
	}

	return ret;
}