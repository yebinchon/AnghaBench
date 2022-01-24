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
struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_usb_bcn {int /*<<< orphan*/  guardian_urb; int /*<<< orphan*/  urb; } ;
struct queue_entry_priv_usb {int /*<<< orphan*/  guardian_urb; int /*<<< orphan*/  urb; } ;
struct queue_entry {TYPE_1__* queue; int /*<<< orphan*/  flags; struct queue_entry_priv_usb_bcn* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 scalar_t__ QID_BEACON ; 
 int /*<<< orphan*/  REQUIRE_BEACON_GUARD ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct queue_entry *entry, void *data)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct queue_entry_priv_usb *entry_priv = entry->priv_data;
	struct queue_entry_priv_usb_bcn *bcn_priv = entry->priv_data;

	if (!FUNC1(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
		return false;

	FUNC2(entry_priv->urb);

	/*
	 * Kill guardian urb (if required by driver).
	 */
	if ((entry->queue->qid == QID_BEACON) &&
	    (FUNC0(rt2x00dev, REQUIRE_BEACON_GUARD)))
		FUNC2(bcn_priv->guardian_urb);

	return false;
}