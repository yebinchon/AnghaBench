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
struct iscsi_conn {int /*<<< orphan*/ * conn_tx_hash; int /*<<< orphan*/ * conn_rx_hash; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 void* FUNC1 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct crypto_ahash* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct iscsi_conn *conn)
{
	struct crypto_ahash *tfm;

	/*
	 * Setup slicing by CRC32C algorithm for RX and TX libcrypto contexts
	 * which will default to crc32c_intel.ko for cpu_has_xmm4_2, or fallback
	 * to software 1x8 byte slicing from crc32c.ko
	 */
	tfm = FUNC4("crc32c", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm)) {
		FUNC6("crypto_alloc_ahash() failed\n");
		return -ENOMEM;
	}

	conn->conn_rx_hash = FUNC1(tfm, GFP_KERNEL);
	if (!conn->conn_rx_hash) {
		FUNC6("ahash_request_alloc() failed for conn_rx_hash\n");
		FUNC5(tfm);
		return -ENOMEM;
	}
	FUNC3(conn->conn_rx_hash, 0, NULL, NULL);

	conn->conn_tx_hash = FUNC1(tfm, GFP_KERNEL);
	if (!conn->conn_tx_hash) {
		FUNC6("ahash_request_alloc() failed for conn_tx_hash\n");
		FUNC2(conn->conn_rx_hash);
		conn->conn_rx_hash = NULL;
		FUNC5(tfm);
		return -ENOMEM;
	}
	FUNC3(conn->conn_tx_hash, 0, NULL, NULL);

	return 0;
}