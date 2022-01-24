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
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct dasd_ccw_req {int /*<<< orphan*/  memdev; int /*<<< orphan*/  callback; } ;
struct ciw {scalar_t__ cmd; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CIW_TYPE_RCD ; 
 scalar_t__ DASD_ECKD_CCW_RCD ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int DASD_ECKD_RCD_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 struct ciw* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,struct dasd_ccw_req*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dasd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int,int) ; 
 int /*<<< orphan*/  read_conf_cb ; 

__attribute__((used)) static int FUNC9(struct dasd_device *device,
				   void **rcd_buffer,
				   int *rcd_buffer_size, __u8 lpm)
{
	struct ciw *ciw;
	char *rcd_buf = NULL;
	int ret;
	struct dasd_ccw_req *cqr;

	/*
	 * sanity check: scan for RCD command in extended SenseID data
	 * some devices do not support RCD
	 */
	ciw = FUNC2(device->cdev, CIW_TYPE_RCD);
	if (!ciw || ciw->cmd != DASD_ECKD_CCW_RCD) {
		ret = -EOPNOTSUPP;
		goto out_error;
	}
	rcd_buf = FUNC8(DASD_ECKD_RCD_DATA_SIZE, GFP_KERNEL | GFP_DMA);
	if (!rcd_buf) {
		ret = -ENOMEM;
		goto out_error;
	}
	cqr = FUNC6(DASD_ECKD_MAGIC, 1 /* RCD */,
				   0, /* use rcd_buf as data ara */
				   device, NULL);
	if (FUNC1(cqr)) {
		FUNC0(DBF_WARNING, device, "%s",
			      "Could not allocate RCD request");
		ret = -ENOMEM;
		goto out_error;
	}
	FUNC3(device, cqr, rcd_buf, lpm);
	cqr->callback = read_conf_cb;
	ret = FUNC5(cqr);
	/*
	 * on success we update the user input parms
	 */
	FUNC4(cqr, cqr->memdev);
	if (ret)
		goto out_error;

	*rcd_buffer_size = DASD_ECKD_RCD_DATA_SIZE;
	*rcd_buffer = rcd_buf;
	return 0;
out_error:
	FUNC7(rcd_buf);
	*rcd_buffer = NULL;
	*rcd_buffer_size = 0;
	return ret;
}