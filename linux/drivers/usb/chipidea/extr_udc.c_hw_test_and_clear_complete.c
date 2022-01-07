
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int BIT (int) ;
 int OP_ENDPTCOMPLETE ;
 int ep_to_bit (struct ci_hdrc*,int) ;
 int hw_test_and_clear (struct ci_hdrc*,int ,int ) ;

__attribute__((used)) static int hw_test_and_clear_complete(struct ci_hdrc *ci, int n)
{
 n = ep_to_bit(ci, n);
 return hw_test_and_clear(ci, OP_ENDPTCOMPLETE, BIT(n));
}
