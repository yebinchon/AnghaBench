
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef int blk_status_t ;


 int blk_put_request (struct request*) ;

__attribute__((used)) static void eh_lock_door_done(struct request *req, blk_status_t status)
{
 blk_put_request(req);
}
