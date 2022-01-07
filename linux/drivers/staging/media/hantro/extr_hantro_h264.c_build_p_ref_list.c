
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hantro_h264_reflist_builder {int num_valid; int unordered_reflist; } ;


 int memcpy (int *,int ,int) ;
 int p_ref_list_cmp ;
 int sort_r (int *,int ,int,int ,int *,struct hantro_h264_reflist_builder const*) ;

__attribute__((used)) static void
build_p_ref_list(const struct hantro_h264_reflist_builder *builder,
   u8 *reflist)
{
 memcpy(reflist, builder->unordered_reflist,
        sizeof(builder->unordered_reflist));
 sort_r(reflist, builder->num_valid, sizeof(*reflist),
        p_ref_list_cmp, ((void*)0), builder);
}
