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
struct usb_host_endpoint {struct r8a66597_pipe* hcpriv; } ;
struct urb {int dummy; } ;
struct r8a66597_pipe_info {size_t pipenum; } ;
struct r8a66597_pipe {struct r8a66597_pipe_info info; } ;
struct r8a66597_device {int /*<<< orphan*/ * pipe_cnt; TYPE_1__* udev; } ;
struct r8a66597 {int /*<<< orphan*/ * pipe_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R8A66597_PIPE_NO_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,struct r8a66597_device*,struct r8a66597_pipe*,struct urb*) ; 
 struct r8a66597_device* FUNC2 (struct r8a66597*,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r8a66597 *r8a66597, struct urb *urb,
				 struct usb_host_endpoint *hep,
				 struct r8a66597_pipe_info *info)
{
	struct r8a66597_device *dev = FUNC2(r8a66597, urb);
	struct r8a66597_pipe *pipe = hep->hcpriv;

	FUNC0(&dev->udev->dev, "enable_pipe:\n");

	pipe->info = *info;
	FUNC3(pipe, R8A66597_PIPE_NO_DMA);
	r8a66597->pipe_cnt[pipe->info.pipenum]++;
	dev->pipe_cnt[pipe->info.pipenum]++;

	FUNC1(r8a66597, dev, pipe, urb);
}