
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int pr_warn (char*) ;

__attribute__((used)) static int wsm_find_complete_indication(struct cw1200_common *priv,
     struct wsm_buf *buf)
{
 pr_warn("Implement find_complete_indication\n");
 return 0;
}
