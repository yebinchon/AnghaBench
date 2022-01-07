
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_tcp_conn {void* rx_hash; struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {void* tx_hash; void* rx_hash; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int KERN_ERR ;
 void* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (void*) ;
 int ahash_request_set_callback (void*,int ,int *,int *) ;
 struct crypto_ahash* crypto_alloc_ahash (char*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*) ;
 struct iscsi_cls_conn* iscsi_tcp_conn_setup (struct iscsi_cls_session*,int,int ) ;
 int iscsi_tcp_conn_teardown (struct iscsi_cls_conn*) ;

__attribute__((used)) static struct iscsi_cls_conn *
iscsi_sw_tcp_conn_create(struct iscsi_cls_session *cls_session,
    uint32_t conn_idx)
{
 struct iscsi_conn *conn;
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_tcp_conn *tcp_conn;
 struct iscsi_sw_tcp_conn *tcp_sw_conn;
 struct crypto_ahash *tfm;

 cls_conn = iscsi_tcp_conn_setup(cls_session, sizeof(*tcp_sw_conn),
     conn_idx);
 if (!cls_conn)
  return ((void*)0);
 conn = cls_conn->dd_data;
 tcp_conn = conn->dd_data;
 tcp_sw_conn = tcp_conn->dd_data;

 tfm = crypto_alloc_ahash("crc32c", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm))
  goto free_conn;

 tcp_sw_conn->tx_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!tcp_sw_conn->tx_hash)
  goto free_tfm;
 ahash_request_set_callback(tcp_sw_conn->tx_hash, 0, ((void*)0), ((void*)0));

 tcp_sw_conn->rx_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!tcp_sw_conn->rx_hash)
  goto free_tx_hash;
 ahash_request_set_callback(tcp_sw_conn->rx_hash, 0, ((void*)0), ((void*)0));

 tcp_conn->rx_hash = tcp_sw_conn->rx_hash;

 return cls_conn;

free_tx_hash:
 ahash_request_free(tcp_sw_conn->tx_hash);
free_tfm:
 crypto_free_ahash(tfm);
free_conn:
 iscsi_conn_printk(KERN_ERR, conn,
     "Could not create connection due to crc32c "
     "loading error. Make sure the crc32c "
     "module is built as a module or into the "
     "kernel\n");
 iscsi_tcp_conn_teardown(cls_conn);
 return ((void*)0);
}
