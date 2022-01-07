; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MIN_OFFSET = common dso_local global i64 0, align 8
@MAX_OFFSET = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@TICKS_PER_HOUR = common dso_local global i64 0, align 8
@PPB_MULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @tps65910_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MIN_OFFSET, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MAX_OFFSET, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @TICKS_PER_HOUR, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* @PPB_MULT, align 8
  %27 = sdiv i64 %26, 2
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %35

30:                                               ; preds = %19
  %31 = load i64, i64* @PPB_MULT, align 8
  %32 = sdiv i64 %31, 2
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PPB_MULT, align 8
  %38 = call i64 @div_s64(i64 %36, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 0, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @tps65910_rtc_set_calibration(%struct.device* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %35, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @div_s64(i64, i64) #1

declare dso_local i32 @tps65910_rtc_set_calibration(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
