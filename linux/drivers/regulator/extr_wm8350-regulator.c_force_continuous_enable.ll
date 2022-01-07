; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_force_continuous_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_force_continuous_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_DCDC1_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC3_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC4_FORCE_PWM = common dso_local global i32 0, align 4
@WM8350_DCDC6_FORCE_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_DCDC1_FORCE_PWM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32)* @force_continuous_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_continuous_enable(%struct.wm8350* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %19 [
    i32 131, label %11
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @WM8350_DCDC1_FORCE_PWM, align 4
  store i32 %12, i32* %8, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @WM8350_DCDC3_FORCE_PWM, align 4
  store i32 %14, i32* %8, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @WM8350_DCDC4_FORCE_PWM, align 4
  store i32 %16, i32* %8, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @WM8350_DCDC6_FORCE_PWM, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %17, %15, %13, %11
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @WM8350_DCDC1_FORCE_PWM_ENA, align 4
  %29 = call i32 @wm8350_set_bits(%struct.wm8350* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WM8350_DCDC1_FORCE_PWM_ENA, align 4
  %34 = call i32 @wm8350_clear_bits(%struct.wm8350* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
