; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_crc32_reverseBit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_crc32_reverseBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @crc32_reverseBit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32_reverseBit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 7
  %5 = and i32 %4, 128
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 5
  %8 = and i32 %7, 64
  %9 = or i32 %5, %8
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 %10, 3
  %12 = and i32 %11, 32
  %13 = or i32 %9, %12
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 %14, 1
  %16 = and i32 %15, 16
  %17 = or i32 %13, %16
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 1
  %20 = and i32 %19, 8
  %21 = or i32 %17, %20
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 4
  %25 = or i32 %21, %24
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 5
  %28 = and i32 %27, 2
  %29 = or i32 %25, %28
  %30 = load i32, i32* %2, align 4
  %31 = ashr i32 %30, 7
  %32 = and i32 %31, 1
  %33 = or i32 %29, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
