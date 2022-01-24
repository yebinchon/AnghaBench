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
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSF_PKT_DMA_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC2 (struct usbhs_pipe*) ; 
 struct device* FUNC3 (struct usbhs_priv*) ; 
 int FUNC4 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct usbhs_pipe *pipe = arg;
	struct usbhs_priv *priv = FUNC2(pipe);
	struct device *dev = FUNC3(priv);
	int ret;

	ret = FUNC4(pipe, USBHSF_PKT_DMA_DONE);
	if (ret < 0)
		FUNC0(dev, "dma_complete run_error %d : %d\n",
			FUNC1(pipe), ret);
}