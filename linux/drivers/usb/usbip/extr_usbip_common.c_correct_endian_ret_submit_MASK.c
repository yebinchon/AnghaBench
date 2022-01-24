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
struct usbip_header_ret_submit {int /*<<< orphan*/  error_count; int /*<<< orphan*/  number_of_packets; int /*<<< orphan*/  start_frame; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usbip_header_ret_submit *pdu,
				      int send)
{
	if (send) {
		FUNC1(&pdu->status);
		FUNC1(&pdu->actual_length);
		FUNC1(&pdu->start_frame);
		FUNC1(&pdu->number_of_packets);
		FUNC1(&pdu->error_count);
	} else {
		FUNC0(&pdu->status);
		FUNC0(&pdu->actual_length);
		FUNC0(&pdu->start_frame);
		FUNC0(&pdu->number_of_packets);
		FUNC0(&pdu->error_count);
	}
}