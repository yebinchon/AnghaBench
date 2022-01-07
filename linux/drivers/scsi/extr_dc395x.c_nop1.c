
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ScsiReqBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;



__attribute__((used)) static void nop1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
}
