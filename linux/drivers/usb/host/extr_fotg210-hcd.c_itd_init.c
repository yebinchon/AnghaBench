
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_itd {int* index; int * hw_bufp; int hw_next; } ;
struct fotg210_iso_stream {int buf2; int buf1; int buf0; } ;
struct fotg210_hcd {int dummy; } ;


 int FOTG210_LIST_END (struct fotg210_hcd*) ;

__attribute__((used)) static inline void itd_init(struct fotg210_hcd *fotg210,
  struct fotg210_iso_stream *stream, struct fotg210_itd *itd)
{
 int i;


 itd->hw_next = FOTG210_LIST_END(fotg210);
 itd->hw_bufp[0] = stream->buf0;
 itd->hw_bufp[1] = stream->buf1;
 itd->hw_bufp[2] = stream->buf2;

 for (i = 0; i < 8; i++)
  itd->index[i] = -1;


}
