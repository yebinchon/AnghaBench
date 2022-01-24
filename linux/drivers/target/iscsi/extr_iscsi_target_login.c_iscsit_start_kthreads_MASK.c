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
struct iscsi_conn {scalar_t__ bitmap_id; int tx_thread_active; int rx_thread_active; void* tx_thread; void* rx_thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  ts_bitmap_lock; int /*<<< orphan*/  ts_bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ISCSIT_BITMAP_BITS ; 
 int /*<<< orphan*/  ISCSI_RX_THREAD_NAME ; 
 int /*<<< orphan*/  ISCSI_TX_THREAD_NAME ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  iscsi_target_rx_thread ; 
 int /*<<< orphan*/  iscsi_target_tx_thread ; 
 TYPE_1__* iscsit_global ; 
 void* FUNC5 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct iscsi_conn *conn)
{
	int ret = 0;

	FUNC9(&iscsit_global->ts_bitmap_lock);
	conn->bitmap_id = FUNC2(iscsit_global->ts_bitmap,
					ISCSIT_BITMAP_BITS, FUNC4(1));
	FUNC10(&iscsit_global->ts_bitmap_lock);

	if (conn->bitmap_id < 0) {
		FUNC7("bitmap_find_free_region() failed for"
		       " iscsit_start_kthreads()\n");
		return -ENOMEM;
	}

	conn->tx_thread = FUNC5(iscsi_target_tx_thread, conn,
				      "%s", ISCSI_TX_THREAD_NAME);
	if (FUNC0(conn->tx_thread)) {
		FUNC7("Unable to start iscsi_target_tx_thread\n");
		ret = FUNC1(conn->tx_thread);
		goto out_bitmap;
	}
	conn->tx_thread_active = true;

	conn->rx_thread = FUNC5(iscsi_target_rx_thread, conn,
				      "%s", ISCSI_RX_THREAD_NAME);
	if (FUNC0(conn->rx_thread)) {
		FUNC7("Unable to start iscsi_target_rx_thread\n");
		ret = FUNC1(conn->rx_thread);
		goto out_tx;
	}
	conn->rx_thread_active = true;

	return 0;
out_tx:
	FUNC8(SIGINT, conn->tx_thread, 1);
	FUNC6(conn->tx_thread);
	conn->tx_thread_active = false;
out_bitmap:
	FUNC9(&iscsit_global->ts_bitmap_lock);
	FUNC3(iscsit_global->ts_bitmap, conn->bitmap_id,
			      FUNC4(1));
	FUNC10(&iscsit_global->ts_bitmap_lock);
	return ret;
}