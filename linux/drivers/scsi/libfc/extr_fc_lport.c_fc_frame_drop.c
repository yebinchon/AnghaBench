
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 int fc_frame_free (struct fc_frame*) ;

__attribute__((used)) static int fc_frame_drop(struct fc_lport *lport, struct fc_frame *fp)
{
 fc_frame_free(fp);
 return 0;
}
