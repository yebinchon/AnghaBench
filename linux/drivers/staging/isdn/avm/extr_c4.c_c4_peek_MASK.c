#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mbase; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 unsigned long DBELL_ADDR ; 
 unsigned long DBELL_RNWR ; 
 scalar_t__ DOORBELL ; 
 int HZ ; 
 scalar_t__ MBOX_PEEK_POKE ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(avmcard *card,  unsigned long off, unsigned long *valuep)
{
	if (FUNC2(card, HZ / 10) < 0)
		return -1;

	FUNC1(card->mbase + MBOX_PEEK_POKE, off);
	FUNC1(card->mbase + DOORBELL, DBELL_RNWR | DBELL_ADDR);

	if (FUNC2(card, HZ / 10) < 0)
		return -1;

	*valuep = FUNC0(card->mbase + MBOX_PEEK_POKE);

	return 0;
}