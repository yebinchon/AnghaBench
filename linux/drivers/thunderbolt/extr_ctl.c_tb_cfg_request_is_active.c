
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_request {int flags; } ;


 int TB_CFG_REQUEST_ACTIVE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool tb_cfg_request_is_active(struct tb_cfg_request *req)
{
 return test_bit(TB_CFG_REQUEST_ACTIVE, &req->flags);
}
