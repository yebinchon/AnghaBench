
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int be32_to_cpup (int const*) ;
 struct device_node* of_find_node_by_phandle (int) ;
 int * of_get_property (struct device_node*,char const*,int*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char const*,int*) ;
 int pr_debug (char*,struct device_node*,char const*,int,int,int,int,int,int) ;
 int pr_err (char*,struct device_node*,char const*,...) ;
 int pr_info (char*,struct device_node*,char const*,int,struct device_node*) ;

int of_map_rid(struct device_node *np, u32 rid,
        const char *map_name, const char *map_mask_name,
        struct device_node **target, u32 *id_out)
{
 u32 map_mask, masked_rid;
 int map_len;
 const __be32 *map = ((void*)0);

 if (!np || !map_name || (!target && !id_out))
  return -EINVAL;

 map = of_get_property(np, map_name, &map_len);
 if (!map) {
  if (target)
   return -ENODEV;

  *id_out = rid;
  return 0;
 }

 if (!map_len || map_len % (4 * sizeof(*map))) {
  pr_err("%pOF: Error: Bad %s length: %d\n", np,
   map_name, map_len);
  return -EINVAL;
 }


 map_mask = 0xffffffff;





 if (map_mask_name)
  of_property_read_u32(np, map_mask_name, &map_mask);

 masked_rid = map_mask & rid;
 for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
  struct device_node *phandle_node;
  u32 rid_base = be32_to_cpup(map + 0);
  u32 phandle = be32_to_cpup(map + 1);
  u32 out_base = be32_to_cpup(map + 2);
  u32 rid_len = be32_to_cpup(map + 3);

  if (rid_base & ~map_mask) {
   pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores rid-base (0x%x)\n",
    np, map_name, map_name,
    map_mask, rid_base);
   return -EFAULT;
  }

  if (masked_rid < rid_base || masked_rid >= rid_base + rid_len)
   continue;

  phandle_node = of_find_node_by_phandle(phandle);
  if (!phandle_node)
   return -ENODEV;

  if (target) {
   if (*target)
    of_node_put(phandle_node);
   else
    *target = phandle_node;

   if (*target != phandle_node)
    continue;
  }

  if (id_out)
   *id_out = masked_rid - rid_base + out_base;

  pr_debug("%pOF: %s, using mask %08x, rid-base: %08x, out-base: %08x, length: %08x, rid: %08x -> %08x\n",
   np, map_name, map_mask, rid_base, out_base,
   rid_len, rid, masked_rid - rid_base + out_base);
  return 0;
 }

 pr_info("%pOF: no %s translation for rid 0x%x on %pOF\n", np, map_name,
  rid, target && *target ? *target : ((void*)0));


 if (id_out)
  *id_out = rid;
 return 0;
}
