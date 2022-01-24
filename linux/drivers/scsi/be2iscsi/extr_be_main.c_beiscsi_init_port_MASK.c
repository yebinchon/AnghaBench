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
struct beiscsi_hba {int /*<<< orphan*/  eh_sgl_hndl_base; int /*<<< orphan*/  io_sgl_hndl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*) ; 
 int FUNC4 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_hba *phba)
{
	int ret;

	ret = FUNC4(phba);
	if (ret < 0) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : init controller failed\n");
		return ret;
	}
	ret = FUNC0(phba);
	if (ret < 0) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : init sgl handles failed\n");
		goto cleanup_port;
	}

	ret = FUNC2(phba);
	if (ret < 0) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : setup CID table failed\n");
		FUNC5(phba->io_sgl_hndl_base);
		FUNC5(phba->eh_sgl_hndl_base);
		goto cleanup_port;
	}
	return ret;

cleanup_port:
	FUNC3(phba);
	return ret;
}