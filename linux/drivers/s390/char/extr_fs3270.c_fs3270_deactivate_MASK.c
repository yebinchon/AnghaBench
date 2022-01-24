#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct raw3270_view {int dummy; } ;
struct fs3270 {TYPE_1__* init; TYPE_4__* rdbuf; scalar_t__ active; } ;
struct TYPE_9__ {int* data; int size; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* callback ) (TYPE_1__*,int /*<<< orphan*/ *) ;scalar_t__ rc; scalar_t__ rescnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_RDBUF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (struct raw3270_view*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct raw3270_view *view)
{
	struct fs3270 *fp;

	fp = (struct fs3270 *) view;
	fp->active = 0;

	/* If an old init command is still running just return. */
	if (!FUNC1(fp->init))
		return;

	/* Prepare read-buffer request. */
	FUNC2(fp->init, TC_RDBUF);
	/*
	 * Hackish: skip first 5 bytes of the idal buffer to make
	 * room for the TW_KR/TO_SBA/<address>/<address>/TO_IC sequence
	 * in the activation command.
	 */
	fp->rdbuf->data[0] += 5;
	fp->rdbuf->size -= 5;
	FUNC3(fp->init, fp->rdbuf);
	fp->init->rescnt = 0;
	fp->init->callback = fs3270_save_callback;

	/* Start I/O to read in the 3270 buffer. */
	fp->init->rc = FUNC4(view, fp->init);
	if (fp->init->rc)
		fp->init->callback(fp->init, NULL);
}