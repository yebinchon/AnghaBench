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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_tcp_conn {void* rx_hash; struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {void* tx_hash; void* rx_hash; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 void* FUNC1 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct crypto_ahash* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct iscsi_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC7 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_cls_conn*) ; 

__attribute__((used)) static struct iscsi_cls_conn *
FUNC9(struct iscsi_cls_session *cls_session,
			 uint32_t conn_idx)
{
	struct iscsi_conn *conn;
	struct iscsi_cls_conn *cls_conn;
	struct iscsi_tcp_conn *tcp_conn;
	struct iscsi_sw_tcp_conn *tcp_sw_conn;
	struct crypto_ahash *tfm;

	cls_conn = FUNC7(cls_session, sizeof(*tcp_sw_conn),
					conn_idx);
	if (!cls_conn)
		return NULL;
	conn = cls_conn->dd_data;
	tcp_conn = conn->dd_data;
	tcp_sw_conn = tcp_conn->dd_data;

	tfm = FUNC4("crc32c", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm))
		goto free_conn;

	tcp_sw_conn->tx_hash = FUNC1(tfm, GFP_KERNEL);
	if (!tcp_sw_conn->tx_hash)
		goto free_tfm;
	FUNC3(tcp_sw_conn->tx_hash, 0, NULL, NULL);

	tcp_sw_conn->rx_hash = FUNC1(tfm, GFP_KERNEL);
	if (!tcp_sw_conn->rx_hash)
		goto free_tx_hash;
	FUNC3(tcp_sw_conn->rx_hash, 0, NULL, NULL);

	tcp_conn->rx_hash = tcp_sw_conn->rx_hash;

	return cls_conn;

free_tx_hash:
	FUNC2(tcp_sw_conn->tx_hash);
free_tfm:
	FUNC5(tfm);
free_conn:
	FUNC6(KERN_ERR, conn,
			  "Could not create connection due to crc32c "
			  "loading error. Make sure the crc32c "
			  "module is built as a module or into the "
			  "kernel\n");
	FUNC8(cls_conn);
	return NULL;
}