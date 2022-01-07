
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FDISC_VFPORT ;
 scalar_t__ FDMI_VNPORT ;
 scalar_t__ FLOGI_VFPORT ;
 scalar_t__ NS_VNPORT ;

__attribute__((used)) static int
csio_is_rnode_wka(uint8_t rport_type)
{
 if ((rport_type == FLOGI_VFPORT) ||
     (rport_type == FDISC_VFPORT) ||
     (rport_type == NS_VNPORT) ||
     (rport_type == FDMI_VNPORT))
  return 1;

 return 0;
}
