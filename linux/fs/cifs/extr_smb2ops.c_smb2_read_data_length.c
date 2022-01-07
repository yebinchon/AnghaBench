
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_read_rsp {int DataLength; int DataRemaining; } ;


 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int
smb2_read_data_length(char *buf, bool in_remaining)
{
 struct smb2_read_rsp *rsp = (struct smb2_read_rsp *)buf;

 if (in_remaining)
  return le32_to_cpu(rsp->DataRemaining);

 return le32_to_cpu(rsp->DataLength);
}
