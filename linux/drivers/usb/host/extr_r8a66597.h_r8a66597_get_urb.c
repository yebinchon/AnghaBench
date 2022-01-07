
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct urb {int dummy; } ;
struct r8a66597_td {struct urb* urb; } ;
struct r8a66597 {int dummy; } ;


 struct r8a66597_td* r8a66597_get_td (struct r8a66597*,int ) ;

__attribute__((used)) static inline struct urb *r8a66597_get_urb(struct r8a66597 *r8a66597,
        u16 pipenum)
{
 struct r8a66597_td *td;

 td = r8a66597_get_td(r8a66597, pipenum);
 return (td ? td->urb : ((void*)0));
}
