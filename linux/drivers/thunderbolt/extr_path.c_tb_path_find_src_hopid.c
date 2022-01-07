
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_in_hop_id; } ;
typedef struct tb_port {TYPE_1__ config; } const tb_port ;


 int TB_PATH_MIN_HOPID ;
 struct tb_port const* tb_path_find_dst_port (struct tb_port const*,int,int) ;

__attribute__((used)) static int tb_path_find_src_hopid(struct tb_port *src,
 const struct tb_port *dst, int dst_hopid)
{
 struct tb_port *out;
 int i;

 for (i = TB_PATH_MIN_HOPID; i <= src->config.max_in_hop_id; i++) {
  out = tb_path_find_dst_port(src, i, dst_hopid);
  if (out == dst)
   return i;
 }

 return 0;
}
