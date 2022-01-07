
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_frame_meta_info {int magic_s; int magic_e; } ;



__attribute__((used)) static inline int qtnf_is_frame_meta_magic_valid(struct qtnf_frame_meta_info *m)
{
 return m->magic_s == 0xAB && m->magic_e == 0xBA;
}
