; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_wait_for_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_wait_for_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*, i32 (%struct.pmic_wrapper*)*)* @pwrap_wait_for_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %0, i32 (%struct.pmic_wrapper*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic_wrapper*, align 8
  %5 = alloca i32 (%struct.pmic_wrapper*)*, align 8
  %6 = alloca i64, align 8
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %4, align 8
  store i32 (%struct.pmic_wrapper*)* %1, i32 (%struct.pmic_wrapper*)** %5, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @usecs_to_jiffies(i32 10000)
  %9 = add i64 %7, %8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @time_after(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32 (%struct.pmic_wrapper*)*, i32 (%struct.pmic_wrapper*)** %5, align 8
  %17 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %4, align 8
  %18 = call i32 %16(%struct.pmic_wrapper* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %10
  %27 = load i32 (%struct.pmic_wrapper*)*, i32 (%struct.pmic_wrapper*)** %5, align 8
  %28 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %4, align 8
  %29 = call i32 %27(%struct.pmic_wrapper* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %34

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  br i1 true, label %10, label %34

34:                                               ; preds = %24, %31, %33
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
