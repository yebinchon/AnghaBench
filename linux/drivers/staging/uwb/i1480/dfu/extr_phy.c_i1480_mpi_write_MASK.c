#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t wEvent; void* bEventType; } ;
struct i1480_evt_confirm {scalar_t__ bResultCode; TYPE_2__ rceb; } ;
struct TYPE_3__ {void* wCommand; void* bCommandType; } ;
struct i1480_cmd_mpi_write {int /*<<< orphan*/  data; void* size; TYPE_1__ rccb; } ;
struct i1480 {int /*<<< orphan*/  dev; struct i1480_evt_confirm* evt_buf; struct i1480_cmd_mpi_write* cmd_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 void* i1480_CET_VS1 ; 
 size_t i1480_CMD_MPI_WRITE ; 
 int FUNC3 (struct i1480*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static
int FUNC5(struct i1480 *i1480, const void *data, size_t size)
{
	int result;
	struct i1480_cmd_mpi_write *cmd = i1480->cmd_buf;
	struct i1480_evt_confirm *reply = i1480->evt_buf;

	FUNC0(size > 480);
	result = -ENOMEM;
	cmd->rccb.bCommandType = i1480_CET_VS1;
	cmd->rccb.wCommand = FUNC1(i1480_CMD_MPI_WRITE);
	cmd->size = FUNC1(size);
	FUNC4(cmd->data, data, size);
	reply->rceb.bEventType = i1480_CET_VS1;
	reply->rceb.wEvent = i1480_CMD_MPI_WRITE;
	result = FUNC3(i1480, "MPI-WRITE", sizeof(*cmd) + size, sizeof(*reply));
	if (result < 0)
		goto out;
	if (reply->bResultCode != UWB_RC_RES_SUCCESS) {
		FUNC2(i1480->dev, "MPI-WRITE: command execution failed: %d\n",
			reply->bResultCode);
		result = -EIO;
	}
out:
	return result;
}