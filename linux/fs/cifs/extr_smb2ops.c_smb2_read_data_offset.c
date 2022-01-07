
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_read_rsp {unsigned int DataOffset; } ;



__attribute__((used)) static unsigned int
smb2_read_data_offset(char *buf)
{
 struct smb2_read_rsp *rsp = (struct smb2_read_rsp *)buf;

 return rsp->DataOffset;
}
