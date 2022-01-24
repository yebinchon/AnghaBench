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
struct isi_board {unsigned long base; int /*<<< orphan*/  flags; int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct isi_board *card)
{
	unsigned long base = card->base;
	unsigned int retries, a;

	for (retries = 0; retries < 10; retries++) {
		FUNC3(&card->card_lock, card->flags);
		for (a = 0; a < 10; a++) {
			if (FUNC0(base + 0xe) & 0x1)
				return 1;
			FUNC5(10);
		}
		FUNC4(&card->card_lock, card->flags);
		FUNC1(10);
	}
	FUNC2("Failed to lock Card (0x%lx)\n", card->base);

	return 0;	/* Failed to acquire the card! */
}