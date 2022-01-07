; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_divide_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_divide_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @pci230_divide_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_divide_ns(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @do_div(i64 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %16 [
    i32 129, label %17
    i32 130, label %24
    i32 128, label %25
  ]

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %3, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DIV_ROUND_CLOSEST(i32 %18, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %7, align 8
  br label %32

24:                                               ; preds = %3
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %26, i32 %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %25, %24, %17
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @UINT_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @UINT_MAX, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
