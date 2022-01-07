; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_expand_pixel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_expand_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_pixel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = shl i32 %4, 24
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 2
  %8 = shl i32 %7, 27
  %9 = or i32 %5, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 4
  %12 = shl i32 %11, 14
  %13 = or i32 %9, %12
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 8
  %16 = shl i32 %15, 17
  %17 = or i32 %13, %16
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 16
  %20 = shl i32 %19, 4
  %21 = or i32 %17, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 32
  %24 = shl i32 %23, 7
  %25 = or i32 %21, %24
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 64
  %28 = ashr i32 %27, 6
  %29 = or i32 %25, %28
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 128
  %32 = ashr i32 %31, 3
  %33 = or i32 %29, %32
  %34 = mul nsw i32 %33, 15
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
