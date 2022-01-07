; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_merge_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_merge_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @merge_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_value(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 8
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, -8
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, -8
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
