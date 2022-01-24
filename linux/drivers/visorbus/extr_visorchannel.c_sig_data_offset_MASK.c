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
struct signal_queue_header {int sig_base_offset; int signal_size; } ;
struct channel_header {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct channel_header*,int) ; 

__attribute__((used)) static int FUNC1(struct channel_header *chan_hdr, int q,
			   struct signal_queue_header *sig_hdr, int slot)
{
	return (FUNC0(chan_hdr, q) + sig_hdr->sig_base_offset +
	       (slot * sig_hdr->signal_size));
}