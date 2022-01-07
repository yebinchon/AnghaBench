
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qman_fq {int dummy; } ;


 struct qman_fq* idx_to_fq (scalar_t__) ;

__attribute__((used)) static struct qman_fq *tag_to_fq(u32 tag)
{



 return (struct qman_fq *)tag;

}
