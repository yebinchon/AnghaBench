
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_peer {int generation; int node_id; } ;
struct fw_unit {int device; } ;
struct fw_device {int generation; int node_id; } ;


 struct fwtty_peer* dev_get_drvdata (int *) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int smp_rmb () ;
 int smp_wmb () ;

__attribute__((used)) static void fwserial_update(struct fw_unit *unit)
{
 struct fw_device *parent = fw_parent_device(unit);
 struct fwtty_peer *peer = dev_get_drvdata(&unit->device);
 int generation;

 generation = parent->generation;
 smp_rmb();
 peer->node_id = parent->node_id;
 smp_wmb();
 peer->generation = generation;
}
