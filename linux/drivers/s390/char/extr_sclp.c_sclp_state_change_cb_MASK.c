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
struct sclp_statechangebuf {int /*<<< orphan*/  sclp_active_facility_mask; scalar_t__ validity_sclp_active_facility_mask; scalar_t__ validity_sclp_send_mask; scalar_t__ validity_sclp_receive_mask; } ;
struct evbuf_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  facilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sclp_statechangebuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sclp_statechangebuf*) ; 
 TYPE_1__ sclp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_receive_mask ; 
 int /*<<< orphan*/  sclp_send_mask ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct evbuf_header *evbuf)
{
	unsigned long flags;
	struct sclp_statechangebuf *scbuf;

	FUNC0(sizeof(struct sclp_statechangebuf) > PAGE_SIZE);

	scbuf = (struct sclp_statechangebuf *) evbuf;
	FUNC4(&sclp_lock, flags);
	if (scbuf->validity_sclp_receive_mask)
		sclp_receive_mask = FUNC1(scbuf);
	if (scbuf->validity_sclp_send_mask)
		sclp_send_mask = FUNC2(scbuf);
	FUNC5(&sclp_lock, flags);
	if (scbuf->validity_sclp_active_facility_mask)
		sclp.facilities = scbuf->sclp_active_facility_mask;
	FUNC3();
}