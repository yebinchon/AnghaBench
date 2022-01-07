; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_fbtft_expand_debug_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_fbtft_expand_debug_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_LEVEL_1 = common dso_local global i64 0, align 8
@DEBUG_LEVEL_2 = common dso_local global i64 0, align 8
@DEBUG_LEVEL_3 = common dso_local global i64 0, align 8
@DEBUG_LEVEL_4 = common dso_local global i64 0, align 8
@DEBUG_LEVEL_5 = common dso_local global i64 0, align 8
@DEBUG_LEVEL_6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbtft_expand_debug_value(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  switch i64 %5, label %38 [
    i64 1, label %6
    i64 2, label %11
    i64 3, label %16
    i64 4, label %21
    i64 5, label %26
    i64 6, label %31
    i64 7, label %36
  ]

6:                                                ; preds = %1
  %7 = load i64, i64* @DEBUG_LEVEL_1, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = load i64, i64* %8, align 8
  %10 = or i64 %9, %7
  store i64 %10, i64* %8, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load i64, i64* @DEBUG_LEVEL_2, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = load i64, i64* %13, align 8
  %15 = or i64 %14, %12
  store i64 %15, i64* %13, align 8
  br label %38

16:                                               ; preds = %1
  %17 = load i64, i64* @DEBUG_LEVEL_3, align 8
  %18 = load i64*, i64** %2, align 8
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %19, %17
  store i64 %20, i64* %18, align 8
  br label %38

21:                                               ; preds = %1
  %22 = load i64, i64* @DEBUG_LEVEL_4, align 8
  %23 = load i64*, i64** %2, align 8
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %24, %22
  store i64 %25, i64* %23, align 8
  br label %38

26:                                               ; preds = %1
  %27 = load i64, i64* @DEBUG_LEVEL_5, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %27
  store i64 %30, i64* %28, align 8
  br label %38

31:                                               ; preds = %1
  %32 = load i64, i64* @DEBUG_LEVEL_6, align 8
  %33 = load i64*, i64** %2, align 8
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %38

36:                                               ; preds = %1
  %37 = load i64*, i64** %2, align 8
  store i64 4294967295, i64* %37, align 8
  br label %38

38:                                               ; preds = %1, %36, %31, %26, %21, %16, %11, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
