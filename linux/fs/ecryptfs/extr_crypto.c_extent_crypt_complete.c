
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_crypt_result {int rc; int completion; } ;
struct crypto_async_request {struct extent_crypt_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void extent_crypt_complete(struct crypto_async_request *req, int rc)
{
 struct extent_crypt_result *ecr = req->data;

 if (rc == -EINPROGRESS)
  return;

 ecr->rc = rc;
 complete(&ecr->completion);
}
