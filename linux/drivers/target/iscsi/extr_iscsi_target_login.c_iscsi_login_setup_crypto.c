
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int * conn_tx_hash; int * conn_rx_hash; } ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 void* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (int *) ;
 int ahash_request_set_callback (int *,int ,int *,int *) ;
 struct crypto_ahash* crypto_alloc_ahash (char*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int pr_err (char*) ;

int iscsi_login_setup_crypto(struct iscsi_conn *conn)
{
 struct crypto_ahash *tfm;






 tfm = crypto_alloc_ahash("crc32c", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm)) {
  pr_err("crypto_alloc_ahash() failed\n");
  return -ENOMEM;
 }

 conn->conn_rx_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!conn->conn_rx_hash) {
  pr_err("ahash_request_alloc() failed for conn_rx_hash\n");
  crypto_free_ahash(tfm);
  return -ENOMEM;
 }
 ahash_request_set_callback(conn->conn_rx_hash, 0, ((void*)0), ((void*)0));

 conn->conn_tx_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!conn->conn_tx_hash) {
  pr_err("ahash_request_alloc() failed for conn_tx_hash\n");
  ahash_request_free(conn->conn_rx_hash);
  conn->conn_rx_hash = ((void*)0);
  crypto_free_ahash(tfm);
  return -ENOMEM;
 }
 ahash_request_set_callback(conn->conn_tx_hash, 0, ((void*)0), ((void*)0));

 return 0;
}
