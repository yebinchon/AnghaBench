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
struct qedi_fastpath {int /*<<< orphan*/  sb_id; int /*<<< orphan*/  sb_info; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; struct qedi_fastpath* fp_array; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct qedi_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct qedi_ctx*) ; 

__attribute__((used)) static int FUNC7(struct qedi_ctx *qedi)
{
	struct qedi_fastpath *fp;
	int id, ret = 0;

	ret = FUNC3(qedi);
	if (ret)
		goto err;

	FUNC6(qedi);

	for (id = 0; id < FUNC0(qedi); id++) {
		fp = &qedi->fp_array[id];
		ret = FUNC2(qedi, fp->sb_info, fp->sb_id);
		if (ret) {
			FUNC1(&qedi->dbg_ctx,
				 "SB allocation and initialization failed.\n");
			ret = -EIO;
			goto err_init;
		}
	}

	return 0;

err_init:
	FUNC5(qedi);
	FUNC4(qedi);
err:
	return ret;
}