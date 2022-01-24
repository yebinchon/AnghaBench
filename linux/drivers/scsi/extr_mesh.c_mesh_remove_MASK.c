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
struct mesh_state {int /*<<< orphan*/  dma_cmd_bus; int /*<<< orphan*/  dma_cmd_space; int /*<<< orphan*/  dma_cmd_size; int /*<<< orphan*/  dma; int /*<<< orphan*/  mesh; int /*<<< orphan*/  meshintr; struct Scsi_Host* host; } ;
struct macio_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mesh_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct macio_dev*) ; 
 TYPE_1__* FUNC4 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mesh_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct macio_dev *mdev)
{
	struct mesh_state *ms = (struct mesh_state *)FUNC3(mdev);
	struct Scsi_Host *mesh_host = ms->host;

	FUNC8(mesh_host);

	FUNC1(ms->meshintr, ms);

	/* Reset scsi bus */
	FUNC6(mdev);

	/* Shut down chip & termination */
	FUNC9(ms, 0);

	/* Unmap registers & dma controller */
	FUNC2(ms->mesh);
       	FUNC2(ms->dma);

	/* Free DMA commands memory */
	FUNC0(&FUNC4(mdev)->dev, ms->dma_cmd_size,
			    ms->dma_cmd_space, ms->dma_cmd_bus);

	/* Release memory resources */
	FUNC5(mdev);

	FUNC7(mesh_host);

	return 0;
}