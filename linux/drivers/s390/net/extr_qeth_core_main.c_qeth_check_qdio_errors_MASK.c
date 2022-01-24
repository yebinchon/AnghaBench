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
struct qeth_card {int dummy; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_2__ {unsigned int sflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  rx_dropped ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card,
				  struct qdio_buffer *buf,
				  unsigned int qdio_error,
				  const char *dbftext)
{
	if (qdio_error) {
		FUNC1(card, 2, dbftext);
		FUNC2(card, 2, " F15=%02X",
			       buf->element[15].sflags);
		FUNC2(card, 2, " F14=%02X",
			       buf->element[14].sflags);
		FUNC2(card, 2, " qerr=%X", qdio_error);
		if ((buf->element[15].sflags) == 0x12) {
			FUNC0(card, rx_dropped);
			return 0;
		} else
			return 1;
	}
	return 0;
}