
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline u64 pci_rebar_size_to_bytes(int size)
{
 return 1ULL << (size + 20);
}
