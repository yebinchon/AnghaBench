#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {int /*<<< orphan*/  f_pos; } ;
struct autofs_sb_info {int /*<<< orphan*/  pipe_mutex; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  signal; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__ pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EIO ; 
 int EPIPE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int FUNC0 (struct file*,char const*,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct autofs_sb_info *sbi,
			struct file *file, const void *addr, int bytes)
{
	unsigned long sigpipe, flags;
	const char *data = (const char *)addr;
	ssize_t wr = 0;

	sigpipe = FUNC5(&current->pending.signal, SIGPIPE);

	FUNC1(&sbi->pipe_mutex);
	while (bytes) {
		wr = FUNC0(file, data, bytes, &file->f_pos);
		if (wr <= 0)
			break;
		data += wr;
		bytes -= wr;
	}
	FUNC2(&sbi->pipe_mutex);

	/* Keep the currently executing process from receiving a
	 * SIGPIPE unless it was already supposed to get one
	 */
	if (wr == -EPIPE && !sigpipe) {
		FUNC6(&current->sighand->siglock, flags);
		FUNC4(&current->pending.signal, SIGPIPE);
		FUNC3();
		FUNC7(&current->sighand->siglock, flags);
	}

	/* if 'wr' returned 0 (impossible) we assume -EIO (safe) */
	return bytes == 0 ? 0 : wr < 0 ? wr : -EIO;
}