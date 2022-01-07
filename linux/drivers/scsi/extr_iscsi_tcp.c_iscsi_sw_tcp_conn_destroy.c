
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {scalar_t__ tx_hash; scalar_t__ rx_hash; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct crypto_ahash {int dummy; } ;


 int ahash_request_free (scalar_t__) ;
 struct crypto_ahash* crypto_ahash_reqtfm (scalar_t__) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int iscsi_sw_tcp_release_conn (struct iscsi_conn*) ;
 int iscsi_tcp_conn_teardown (struct iscsi_cls_conn*) ;

__attribute__((used)) static void iscsi_sw_tcp_conn_destroy(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;

 iscsi_sw_tcp_release_conn(conn);

 ahash_request_free(tcp_sw_conn->rx_hash);
 if (tcp_sw_conn->tx_hash) {
  struct crypto_ahash *tfm;

  tfm = crypto_ahash_reqtfm(tcp_sw_conn->tx_hash);
  ahash_request_free(tcp_sw_conn->tx_hash);
  crypto_free_ahash(tfm);
 }

 iscsi_tcp_conn_teardown(cls_conn);
}
