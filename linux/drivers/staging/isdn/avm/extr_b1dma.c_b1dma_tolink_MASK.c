#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(avmcard *card, void *buf, unsigned int len)
{
	unsigned long stop = jiffies + 1 * HZ;	/* maximum wait time 1 sec */
	unsigned char *s = (unsigned char *)buf;
	while (len--) {
		while (!FUNC0(card->port)
		       && FUNC2(jiffies, stop));
		if (!FUNC0(card->port))
			return -1;
		FUNC1(card->port, 0x01, *s++);
	}
	return 0;
}