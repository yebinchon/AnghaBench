
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_hid {scalar_t__ bufsize; int * inbuf; } ;


 int kfree (int *) ;

__attribute__((used)) static void gb_hid_free_buffers(struct gb_hid *ghid)
{
 kfree(ghid->inbuf);
 ghid->inbuf = ((void*)0);
 ghid->bufsize = 0;
}
