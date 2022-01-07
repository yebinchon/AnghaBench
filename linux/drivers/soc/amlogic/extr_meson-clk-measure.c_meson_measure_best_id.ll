; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_meson_measure_best_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-clk-measure.c_meson_measure_best_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_msr_id = type { i32 }

@DIV_MAX = common dso_local global i32 0, align 4
@DIV_STEP = common dso_local global i64 0, align 8
@DIV_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_msr_id*, i32*)* @meson_measure_best_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_measure_best_id(%struct.meson_msr_id* %0, i32* %1) #0 {
  %3 = alloca %struct.meson_msr_id*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.meson_msr_id* %0, %struct.meson_msr_id** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @DIV_MAX, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load %struct.meson_msr_id*, %struct.meson_msr_id** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @meson_measure_id(%struct.meson_msr_id* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = udiv i32 2000000, %15
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %24

18:                                               ; preds = %8
  %19 = load i64, i64* @DIV_STEP, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = sub nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DIV_MIN, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %8, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @meson_measure_id(%struct.meson_msr_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
