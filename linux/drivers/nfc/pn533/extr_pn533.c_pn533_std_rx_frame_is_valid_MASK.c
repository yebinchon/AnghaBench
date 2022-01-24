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
typedef  scalar_t__ u8 ;
struct pn533_std_frame {scalar_t__ start_frame; scalar_t__ datalen_checksum; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
struct pn533_ext_frame {scalar_t__ datalen_checksum; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
struct pn533 {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_header_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pn533_ext_frame*) ; 
 int /*<<< orphan*/  PN533_EXT_FRAME_HEADER_LEN ; 
 scalar_t__ FUNC1 (struct pn533_std_frame*) ; 
 int /*<<< orphan*/  PN533_STD_FRAME_HEADER_LEN ; 
 int /*<<< orphan*/  PN533_STD_FRAME_SOF ; 
 int /*<<< orphan*/  FUNC2 (struct pn533_std_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(void *_frame, struct pn533 *dev)
{
	u8 checksum;
	struct pn533_std_frame *stdf = _frame;

	if (stdf->start_frame != FUNC4(PN533_STD_FRAME_SOF))
		return false;

	if (FUNC5(!FUNC2(stdf))) {
		/* Standard frame code */
		dev->ops->rx_header_len = PN533_STD_FRAME_HEADER_LEN;

		checksum = FUNC7(stdf->datalen);
		if (checksum != stdf->datalen_checksum)
			return false;

		checksum = FUNC8(stdf->data, stdf->datalen);
		if (checksum != FUNC1(stdf))
			return false;
	} else {
		/* Extended */
		struct pn533_ext_frame *eif = _frame;

		dev->ops->rx_header_len = PN533_EXT_FRAME_HEADER_LEN;

		checksum = FUNC6(FUNC3(eif->datalen));
		if (checksum != eif->datalen_checksum)
			return false;

		/* check data checksum */
		checksum = FUNC8(eif->data,
						   FUNC3(eif->datalen));
		if (checksum != FUNC0(eif))
			return false;
	}

	return true;
}