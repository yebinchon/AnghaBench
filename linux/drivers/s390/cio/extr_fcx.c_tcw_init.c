
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcw {int r; int w; int flags; int format; } ;


 int TCW_FLAGS_TIDAW_FORMAT (int ) ;
 int TCW_FORMAT_DEFAULT ;
 int TCW_TIDAW_FORMAT_DEFAULT ;
 int memset (struct tcw*,int ,int) ;

void tcw_init(struct tcw *tcw, int r, int w)
{
 memset(tcw, 0, sizeof(struct tcw));
 tcw->format = TCW_FORMAT_DEFAULT;
 tcw->flags = TCW_FLAGS_TIDAW_FORMAT(TCW_TIDAW_FORMAT_DEFAULT);
 if (r)
  tcw->r = 1;
 if (w)
  tcw->w = 1;
}
