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
struct scsi_cmnd {int /*<<< orphan*/  sc_data_direction; } ;
struct qedf_ioreq {TYPE_2__* bd_tbl; struct scsi_cmnd* sc_cmd; } ;
struct qedf_ctx {TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ bd_valid; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(struct qedf_ctx *qedf, struct qedf_ioreq *io_req)
{
	struct scsi_cmnd *sc = io_req->sc_cmd;

	if (io_req->bd_tbl->bd_valid && sc && FUNC1(sc)) {
		FUNC0(&qedf->pdev->dev, FUNC2(sc),
		    FUNC1(sc), sc->sc_data_direction);
		io_req->bd_tbl->bd_valid = 0;
	}
}