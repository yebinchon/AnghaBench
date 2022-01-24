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
struct dwc2_qtd {scalar_t__ error_count; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {scalar_t__ ep_is_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCINTMSK_DATATGLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg,
				    struct dwc2_host_chan *chan, int chnum,
				    struct dwc2_qtd *qtd)
{
	FUNC0(hsotg->dev,
		"--Host Channel %d Interrupt: Data Toggle Error--\n", chnum);

	if (chan->ep_is_in)
		qtd->error_count = 0;
	else
		FUNC1(hsotg->dev,
			"Data Toggle Error on OUT transfer, channel %d\n",
			chnum);

	FUNC3(hsotg, chan, qtd);
	FUNC2(hsotg, chnum, HCINTMSK_DATATGLERR);
}