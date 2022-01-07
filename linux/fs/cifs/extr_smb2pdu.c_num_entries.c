
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int NextEntryOffset; int FileNameLength; } ;
typedef TYPE_1__ FILE_DIRECTORY_INFO ;


 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int
num_entries(char *bufstart, char *end_of_buf, char **lastentry, size_t size)
{
 int len;
 unsigned int entrycount = 0;
 unsigned int next_offset = 0;
 char *entryptr;
 FILE_DIRECTORY_INFO *dir_info;

 if (bufstart == ((void*)0))
  return 0;

 entryptr = bufstart;

 while (1) {
  if (entryptr + next_offset < entryptr ||
      entryptr + next_offset > end_of_buf ||
      entryptr + next_offset + size > end_of_buf) {
   cifs_dbg(VFS, "malformed search entry would overflow\n");
   break;
  }

  entryptr = entryptr + next_offset;
  dir_info = (FILE_DIRECTORY_INFO *)entryptr;

  len = le32_to_cpu(dir_info->FileNameLength);
  if (entryptr + len < entryptr ||
      entryptr + len > end_of_buf ||
      entryptr + len + size > end_of_buf) {
   cifs_dbg(VFS, "directory entry name would overflow frame end of buf %p\n",
     end_of_buf);
   break;
  }

  *lastentry = entryptr;
  entrycount++;

  next_offset = le32_to_cpu(dir_info->NextEntryOffset);
  if (!next_offset)
   break;
 }

 return entrycount;
}
