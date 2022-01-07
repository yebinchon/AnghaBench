
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct u132_endp {int dummy; } ;
struct u132 {int dummy; } ;


 int u132_endp_put_kref (struct u132*,struct u132_endp*) ;

__attribute__((used)) static void u132_hcd_forget_urb(struct u132 *u132, struct u132_endp *endp,
 struct urb *urb, int status)
{
 u132_endp_put_kref(u132, endp);
}
