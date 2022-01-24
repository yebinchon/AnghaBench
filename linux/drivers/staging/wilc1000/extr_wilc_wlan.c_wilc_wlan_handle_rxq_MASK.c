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
typedef  int /*<<< orphan*/  u8 ;
struct wilc {int /*<<< orphan*/  cfg_event; scalar_t__ quit; } ;
struct rxq_entry_t {int buffer_size; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rxq_entry_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*,int /*<<< orphan*/ *,int) ; 
 struct rxq_entry_t* FUNC3 (struct wilc*) ; 

__attribute__((used)) static void FUNC4(struct wilc *wilc)
{
	int size;
	u8 *buffer;
	struct rxq_entry_t *rqe;

	do {
		if (wilc->quit) {
			FUNC0(&wilc->cfg_event);
			break;
		}
		rqe = FUNC3(wilc);
		if (!rqe)
			break;

		buffer = rqe->buffer;
		size = rqe->buffer_size;
		FUNC2(wilc, buffer, size);

		FUNC1(rqe);
	} while (1);
}