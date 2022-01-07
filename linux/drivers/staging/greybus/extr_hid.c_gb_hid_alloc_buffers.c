
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_hid {size_t bufsize; int inbuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (size_t,int ) ;

__attribute__((used)) static int gb_hid_alloc_buffers(struct gb_hid *ghid, size_t bufsize)
{
 ghid->inbuf = kzalloc(bufsize, GFP_KERNEL);
 if (!ghid->inbuf)
  return -ENOMEM;

 ghid->bufsize = bufsize;

 return 0;
}
