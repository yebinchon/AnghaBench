
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hantro_h264_reflist_builder {int num_valid; int unordered_reflist; } ;


 int b0_ref_list_cmp ;
 int b1_ref_list_cmp ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int ,int) ;
 int sort_r (int *,int,int,int ,int *,struct hantro_h264_reflist_builder const*) ;
 int swap (int ,int ) ;

__attribute__((used)) static void
build_b_ref_lists(const struct hantro_h264_reflist_builder *builder,
    u8 *b0_reflist, u8 *b1_reflist)
{
 memcpy(b0_reflist, builder->unordered_reflist,
        sizeof(builder->unordered_reflist));
 sort_r(b0_reflist, builder->num_valid, sizeof(*b0_reflist),
        b0_ref_list_cmp, ((void*)0), builder);

 memcpy(b1_reflist, builder->unordered_reflist,
        sizeof(builder->unordered_reflist));
 sort_r(b1_reflist, builder->num_valid, sizeof(*b1_reflist),
        b1_ref_list_cmp, ((void*)0), builder);

 if (builder->num_valid > 1 &&
     !memcmp(b1_reflist, b0_reflist, builder->num_valid))
  swap(b1_reflist[0], b1_reflist[1]);
}
