
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {scalar_t__ server_eof; } ;
typedef scalar_t__ loff_t ;



void
cifs_update_eof(struct cifsInodeInfo *cifsi, loff_t offset,
        unsigned int bytes_written)
{
 loff_t end_of_write = offset + bytes_written;

 if (end_of_write > cifsi->server_eof)
  cifsi->server_eof = end_of_write;
}
