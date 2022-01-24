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
struct lego_usb_tower {scalar_t__ read_buffer_length; scalar_t__ read_packet_length; int /*<<< orphan*/  read_buffer_lock; scalar_t__ interrupt_in_done; scalar_t__ packet_timeout_jiffies; scalar_t__ read_last_arrival; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  packet_timeout ; 
 scalar_t__ read_buffer_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3 (struct lego_usb_tower *dev)
{
	FUNC0 (&dev->read_buffer_lock);
	if (!packet_timeout
	    || FUNC2(jiffies, dev->read_last_arrival + dev->packet_timeout_jiffies)
	    || dev->read_buffer_length == read_buffer_size) {
		dev->read_packet_length = dev->read_buffer_length;
	}
	dev->interrupt_in_done = 0;
	FUNC1 (&dev->read_buffer_lock);
}