; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pmx_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pmx_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i64, i64* }
%struct.atlas7_pmx = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"atlas7_pmx_gpio_request_enable: pin=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"The pin#%d could not be requested as GPIO!!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@FUNC_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i64)* @atlas7_pmx_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pmx_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atlas7_pmx*, align 8
  %9 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.atlas7_pmx* %11, %struct.atlas7_pmx** %8, align 8
  %12 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %8, align 8
  %13 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %20 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %26 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %40 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %8, align 8
  %45 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @FUNC_GPIO, align 4
  %55 = call i32 @__atlas7_pmx_pin_enable(%struct.atlas7_pmx* %52, i64 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %43
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @__atlas7_pmx_pin_enable(%struct.atlas7_pmx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
