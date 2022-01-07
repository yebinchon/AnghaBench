
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct mpi_coredump_segment_header {int description; void* segSize; void* segNum; int cookie; } ;


 int MPI_COREDUMP_COOKIE ;
 int memset (struct mpi_coredump_segment_header*,int ,int) ;
 int strncpy (int ,int *,int) ;

__attribute__((used)) static void ql_build_coredump_seg_header(
  struct mpi_coredump_segment_header *seg_hdr,
  u32 seg_number, u32 seg_size, u8 *desc)
{
 memset(seg_hdr, 0, sizeof(struct mpi_coredump_segment_header));
 seg_hdr->cookie = MPI_COREDUMP_COOKIE;
 seg_hdr->segNum = seg_number;
 seg_hdr->segSize = seg_size;
 strncpy(seg_hdr->description, desc, (sizeof(seg_hdr->description)) - 1);
}
