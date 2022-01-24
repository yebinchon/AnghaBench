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
struct zd_usb {int dummy; } ;
struct rx_length_info {int /*<<< orphan*/ * length; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 unsigned int RX_LENGTH_INFO_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC5(struct zd_usb *usb, const u8 *buffer,
			     unsigned int length)
{
	int i;
	const struct rx_length_info *length_info;

	if (length < sizeof(struct rx_length_info)) {
		/* It's not a complete packet anyhow. */
		FUNC0(FUNC3(usb), "invalid, small RX packet : %d\n",
					   length);
		return;
	}
	length_info = (struct rx_length_info *)
		(buffer + length - sizeof(struct rx_length_info));

	/* It might be that three frames are merged into a single URB
	 * transaction. We have to check for the length info tag.
	 *
	 * While testing we discovered that length_info might be unaligned,
	 * because if USB transactions are merged, the last packet will not
	 * be padded. Unaligned access might also happen if the length_info
	 * structure is not present.
	 */
	if (FUNC1(&length_info->tag) == RX_LENGTH_INFO_TAG)
	{
		unsigned int l, k, n;
		for (i = 0, l = 0;; i++) {
			k = FUNC1(&length_info->length[i]);
			if (k == 0)
				return;
			n = l+k;
			if (n > length)
				return;
			FUNC2(FUNC4(usb), buffer+l, k);
			if (i >= 2)
				return;
			l = (n+3) & ~3;
		}
	} else {
		FUNC2(FUNC4(usb), buffer, length);
	}
}