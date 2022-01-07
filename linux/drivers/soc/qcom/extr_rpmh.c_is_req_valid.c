
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_req {scalar_t__ sleep_val; scalar_t__ wake_val; } ;


 scalar_t__ UINT_MAX ;

__attribute__((used)) static int is_req_valid(struct cache_req *req)
{
 return (req->sleep_val != UINT_MAX &&
  req->wake_val != UINT_MAX &&
  req->sleep_val != req->wake_val);
}
