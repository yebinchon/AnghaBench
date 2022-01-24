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
struct imgu_media_pipe {int /*<<< orphan*/  imgu_sd; } ;
struct imgu_device {TYPE_1__* pci_dev; struct imgu_media_pipe* imgu_pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IMGU_MAX_PIPE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*,int) ; 
 int FUNC2 (struct imgu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct imgu_device*,int) ; 
 int FUNC4 (struct imgu_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct imgu_device *imgu)
{
	struct imgu_media_pipe *imgu_pipe;
	int i, r;

	for (i = 0; i < IMGU_MAX_PIPE_NUM; i++) {
		imgu_pipe = &imgu->imgu_pipe[i];
		r = FUNC4(imgu, &imgu_pipe->imgu_sd, i);
		if (r) {
			FUNC0(&imgu->pci_dev->dev,
				"failed to register subdev%u ret (%d)\n", i, r);
			goto pipes_cleanup;
		}
		r = FUNC2(imgu, i);
		if (r) {
			FUNC3(imgu, i);
			goto pipes_cleanup;
		}
	}

	return 0;

pipes_cleanup:
	FUNC1(imgu, i);
	return r;
}