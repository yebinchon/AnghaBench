; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_rtc_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_rtc_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.omap_rtc = type { i32 }

@OMAP_RTC_PMIC_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @rtc_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.omap_rtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.omap_rtc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.omap_rtc* %13, %struct.omap_rtc** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.omap_rtc*, %struct.omap_rtc** %8, align 8
  %18 = load i32, i32* @OMAP_RTC_PMIC_REG, align 4
  %19 = call i32 @rtc_readl(%struct.omap_rtc* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %41 [
    i32 128, label %21
    i32 129, label %31
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @OMAP_RTC_PMIC_EXT_WKUP_EN(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %21
  br label %44

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @OMAP_RTC_PMIC_EXT_WKUP_POL(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %31
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %40, %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @pinconf_to_config_packed(i32 %45, i32 %46)
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %41, %37, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.omap_rtc* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @rtc_readl(%struct.omap_rtc*, i32) #1

declare dso_local i32 @OMAP_RTC_PMIC_EXT_WKUP_EN(i32) #1

declare dso_local i32 @OMAP_RTC_PMIC_EXT_WKUP_POL(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
