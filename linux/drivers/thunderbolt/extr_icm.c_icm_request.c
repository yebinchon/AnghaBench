
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_result {int err; } ;
struct tb_cfg_request {size_t request_size; size_t npackets; size_t response_size; int response_type; void* response; int request_type; void const* request; int copy; int match; } ;
struct tb {int ctl; } ;
struct icm {int request_lock; } ;


 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int TB_CFG_PKG_ICM_CMD ;
 int TB_CFG_PKG_ICM_RESP ;
 int icm_copy ;
 int icm_match ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tb_cfg_request* tb_cfg_request_alloc () ;
 int tb_cfg_request_put (struct tb_cfg_request*) ;
 struct tb_cfg_result tb_cfg_request_sync (int ,struct tb_cfg_request*,unsigned int) ;
 struct icm* tb_priv (struct tb*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int icm_request(struct tb *tb, const void *request, size_t request_size,
         void *response, size_t response_size, size_t npackets,
         unsigned int timeout_msec)
{
 struct icm *icm = tb_priv(tb);
 int retries = 3;

 do {
  struct tb_cfg_request *req;
  struct tb_cfg_result res;

  req = tb_cfg_request_alloc();
  if (!req)
   return -ENOMEM;

  req->match = icm_match;
  req->copy = icm_copy;
  req->request = request;
  req->request_size = request_size;
  req->request_type = TB_CFG_PKG_ICM_CMD;
  req->response = response;
  req->npackets = npackets;
  req->response_size = response_size;
  req->response_type = TB_CFG_PKG_ICM_RESP;

  mutex_lock(&icm->request_lock);
  res = tb_cfg_request_sync(tb->ctl, req, timeout_msec);
  mutex_unlock(&icm->request_lock);

  tb_cfg_request_put(req);

  if (res.err != -ETIMEDOUT)
   return res.err == 1 ? -EIO : res.err;

  usleep_range(20, 50);
 } while (retries--);

 return -ETIMEDOUT;
}
