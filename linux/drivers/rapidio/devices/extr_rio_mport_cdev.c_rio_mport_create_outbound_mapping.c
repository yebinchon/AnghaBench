
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport_mapping {int node; int ref; struct mport_dev* md; struct file* filp; int phys_addr; int size; int rio_addr; int rioid; int dir; } ;
struct rio_mport {int dummy; } ;
struct mport_dev {int mappings; struct rio_mport* mport; } ;
struct file {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAP_OUTBOUND ;
 int OBW ;
 int kfree (struct rio_mport_mapping*) ;
 int kref_init (int *) ;
 struct rio_mport_mapping* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int rio_map_outb_region (struct rio_mport*,int ,int ,int ,int ,int *) ;
 int rmcd_debug (int ,char*,int ,int ,int ) ;

__attribute__((used)) static int
rio_mport_create_outbound_mapping(struct mport_dev *md, struct file *filp,
      u16 rioid, u64 raddr, u32 size,
      dma_addr_t *paddr)
{
 struct rio_mport *mport = md->mport;
 struct rio_mport_mapping *map;
 int ret;

 rmcd_debug(OBW, "did=%d ra=0x%llx sz=0x%x", rioid, raddr, size);

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (map == ((void*)0))
  return -ENOMEM;

 ret = rio_map_outb_region(mport, rioid, raddr, size, 0, paddr);
 if (ret < 0)
  goto err_map_outb;

 map->dir = MAP_OUTBOUND;
 map->rioid = rioid;
 map->rio_addr = raddr;
 map->size = size;
 map->phys_addr = *paddr;
 map->filp = filp;
 map->md = md;
 kref_init(&map->ref);
 list_add_tail(&map->node, &md->mappings);
 return 0;
err_map_outb:
 kfree(map);
 return ret;
}
