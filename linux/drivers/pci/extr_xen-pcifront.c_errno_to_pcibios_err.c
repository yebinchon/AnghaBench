
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SET_FAILED ;
 int PCIBIOS_SUCCESSFUL ;







__attribute__((used)) static int errno_to_pcibios_err(int errno)
{
 switch (errno) {
 case 128:
  return PCIBIOS_SUCCESSFUL;

 case 132:
  return PCIBIOS_DEVICE_NOT_FOUND;

 case 131:
 case 129:
  return PCIBIOS_BAD_REGISTER_NUMBER;

 case 130:
  return PCIBIOS_FUNC_NOT_SUPPORTED;

 case 133:
  return PCIBIOS_SET_FAILED;
 }
 return errno;
}
