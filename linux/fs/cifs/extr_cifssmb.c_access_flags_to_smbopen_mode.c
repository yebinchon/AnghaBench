
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const GENERIC_READ ;
 int const GENERIC_WRITE ;
 int SMBOPEN_READ ;
 int SMBOPEN_READWRITE ;
 int SMBOPEN_WRITE ;

__attribute__((used)) static int
access_flags_to_smbopen_mode(const int access_flags)
{
 int masked_flags = access_flags & (GENERIC_READ | GENERIC_WRITE);

 if (masked_flags == GENERIC_READ)
  return SMBOPEN_READ;
 else if (masked_flags == GENERIC_WRITE)
  return SMBOPEN_WRITE;


 return SMBOPEN_READWRITE;
}
