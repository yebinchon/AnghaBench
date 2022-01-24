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
struct lcs_card {int /*<<< orphan*/  read; int /*<<< orphan*/  write; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static void
FUNC4(struct lcs_card *card)
{

	FUNC1(3, setup, "cleancrd");
	FUNC0(2,setup,&card,sizeof(void*));

	if (card->dev != NULL)
		FUNC2(card->dev);
	/* Cleanup channels. */
	FUNC3(&card->write);
	FUNC3(&card->read);
}