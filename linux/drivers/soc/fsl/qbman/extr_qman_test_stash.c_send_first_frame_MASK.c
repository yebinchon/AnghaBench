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
typedef  scalar_t__ u32 ;
struct qm_fd {int dummy; } ;
typedef  int /*<<< orphan*/  fd ;
struct TYPE_2__ {scalar_t__ processor_id; int /*<<< orphan*/  tx; scalar_t__ tx_mixer; int /*<<< orphan*/  addr; scalar_t__* frame_ptr; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HP_FIRST_WORD ; 
 int HP_NUM_WORDS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_fd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qm_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qm_fd*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct qm_fd*) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_1__* special_handler ; 

__attribute__((used)) static int FUNC8(void *ignore)
{
	u32 *p = special_handler->frame_ptr;
	u32 lfsr = HP_FIRST_WORD;
	int loop, err;
	struct qm_fd fd;

	if (special_handler->processor_id != FUNC7()) {
		err = -EIO;
		goto failed;
	}
	FUNC1(&fd, 0, sizeof(fd));
	FUNC4(&fd, special_handler->addr);
	FUNC5(&fd, HP_NUM_WORDS * 4);
	for (loop = 0; loop < HP_NUM_WORDS; loop++, p++) {
		if (*p != lfsr) {
			err = -EIO;
			FUNC2("corrupt frame data");
			goto failed;
		}
		*p ^= special_handler->tx_mixer;
		lfsr = FUNC0(lfsr);
	}
	FUNC3("Sending first frame\n");
	err = FUNC6(&special_handler->tx, &fd);
	if (err) {
		FUNC2("qman_enqueue() failed");
		goto failed;
	}

	return 0;
failed:
	return err;
}