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
struct qedi_fastpath {int sb_id; int /*<<< orphan*/  name; struct qedi_ctx* qedi; struct qedi_fastpath* sb_info; } ;
struct qedi_ctx {struct qedi_fastpath* sb_array; struct qedi_fastpath* fp_array; } ;

/* Variables and functions */
 int FUNC0 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedi_fastpath*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct qedi_ctx *qedi)
{
	struct qedi_fastpath *fp;
	int id;

	FUNC1(qedi->fp_array, 0, FUNC0(qedi) *
	       sizeof(*qedi->fp_array));
	FUNC1(qedi->sb_array, 0, FUNC0(qedi) *
	       sizeof(*qedi->sb_array));

	for (id = 0; id < FUNC0(qedi); id++) {
		fp = &qedi->fp_array[id];
		fp->sb_info = &qedi->sb_array[id];
		fp->sb_id = id;
		fp->qedi = qedi;
		FUNC2(fp->name, sizeof(fp->name), "%s-fp-%d",
			 "qedi", id);

		/* fp_array[i] ---- irq cookie
		 * So init data which is needed in int ctx
		 */
	}
}