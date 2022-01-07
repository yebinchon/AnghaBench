
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int vtermno; int ops; } ;


 int __hvc_flush (int ,int ,int) ;

__attribute__((used)) static int hvc_flush(struct hvc_struct *hp)
{
 return __hvc_flush(hp->ops, hp->vtermno, 1);
}
