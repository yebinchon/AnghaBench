
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sdw_slave_id {int sdw_version; int unique_id; int mfg_id; int part_id; int class_id; } ;
struct sdw_bus {int dev; } ;


 int GENMASK (int,int ) ;
 int dev_dbg (int ,char*,int,...) ;

void sdw_extract_slave_id(struct sdw_bus *bus,
     u64 addr, struct sdw_slave_id *id)
{
 dev_dbg(bus->dev, "SDW Slave Addr: %llx\n", addr);
 id->sdw_version = (addr >> 44) & GENMASK(3, 0);
 id->unique_id = (addr >> 40) & GENMASK(3, 0);
 id->mfg_id = (addr >> 24) & GENMASK(15, 0);
 id->part_id = (addr >> 8) & GENMASK(15, 0);
 id->class_id = addr & GENMASK(7, 0);

 dev_dbg(bus->dev,
  "SDW Slave class_id %x, part_id %x, mfg_id %x, unique_id %x, version %x\n",
    id->class_id, id->part_id, id->mfg_id,
    id->unique_id, id->sdw_version);
}
