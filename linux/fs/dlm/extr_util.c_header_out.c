
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_header {int h_length; void* h_nodeid; void* h_lockspace; void* h_version; } ;


 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (void*) ;

__attribute__((used)) static void header_out(struct dlm_header *hd)
{
 hd->h_version = cpu_to_le32(hd->h_version);
 hd->h_lockspace = cpu_to_le32(hd->h_lockspace);
 hd->h_nodeid = cpu_to_le32(hd->h_nodeid);
 hd->h_length = cpu_to_le16(hd->h_length);
}
