; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_pinctrl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { i32, %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i64 }

@EINT_TYPE_GPIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_pinctrl_resume(%struct.samsung_pinctrl_drv_data* %0) #0 {
  %2 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %2, align 8
  %5 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %5, i32 0, i32 1
  %7 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  store %struct.samsung_pin_bank* %7, %struct.samsung_pin_bank** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %11 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %16 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %22 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %23 = call i32 @exynos_pinctrl_resume_bank(%struct.samsung_pinctrl_drv_data* %21, %struct.samsung_pin_bank* %22)
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %29 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %28, i32 1
  store %struct.samsung_pin_bank* %29, %struct.samsung_pin_bank** %3, align 8
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @exynos_pinctrl_resume_bank(%struct.samsung_pinctrl_drv_data*, %struct.samsung_pin_bank*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
