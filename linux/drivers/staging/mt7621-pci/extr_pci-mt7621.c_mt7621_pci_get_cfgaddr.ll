; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pci_get_cfgaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pci_get_cfgaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mt7621_pci_get_cfgaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pci_get_cfgaddr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 3840
  %11 = lshr i32 %10, 8
  %12 = shl i32 %11, 24
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 16
  %15 = or i32 %12, %14
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 11
  %18 = or i32 %15, %17
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %18, %20
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 252
  %24 = or i32 %21, %23
  %25 = or i32 %24, -2147483648
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
