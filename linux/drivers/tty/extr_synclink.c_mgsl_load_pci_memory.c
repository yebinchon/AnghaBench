
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short PCI_LOAD_INTERVAL ;
 int memcpy (char*,char const*,unsigned short) ;

__attribute__((used)) static void mgsl_load_pci_memory( char* TargetPtr, const char* SourcePtr,
 unsigned short count )
{



 unsigned short Intervalcount = count / 64;
 unsigned short Index;
 unsigned long Dummy;

 for ( Index = 0 ; Index < Intervalcount ; Index++ )
 {
  memcpy(TargetPtr, SourcePtr, 64);
  Dummy = *((volatile unsigned long *)TargetPtr);
  TargetPtr += 64;
  SourcePtr += 64;
 }

 memcpy( TargetPtr, SourcePtr, count % 64 );

}
