; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32, i32)* }

@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_PAU_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4B = common dso_local global i32 0, align 4
@RTC_CTRL_4B_RWK_MASK = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4A = common dso_local global i32 0, align 4
@RTC_CTRL_4A_RWK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1685_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ds1685_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ds1685_priv* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ds1685_priv* %5, %struct.ds1685_priv** %3, align 8
  %6 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %6, i32 0, i32 1
  %8 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %7, align 8
  %9 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %10 = load i32, i32* @RTC_CTRL_B, align 4
  %11 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %11, i32 0, i32 0
  %13 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %12, align 8
  %14 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %15 = load i32, i32* @RTC_CTRL_B, align 4
  %16 = call i32 %13(%struct.ds1685_priv* %14, i32 %15)
  %17 = load i32, i32* @RTC_CTRL_B_PAU_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 %8(%struct.ds1685_priv* %9, i32 %10, i32 %19)
  %21 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %21, i32 0, i32 0
  %23 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %22, align 8
  %24 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %25 = load i32, i32* @RTC_CTRL_C, align 4
  %26 = call i32 %23(%struct.ds1685_priv* %24, i32 %25)
  %27 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %27, i32 0, i32 1
  %29 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %28, align 8
  %30 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %31 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %32 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %32, i32 0, i32 0
  %34 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %33, align 8
  %35 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %36 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %37 = call i32 %34(%struct.ds1685_priv* %35, i32 %36)
  %38 = load i32, i32* @RTC_CTRL_4B_RWK_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 %29(%struct.ds1685_priv* %30, i32 %31, i32 %40)
  %42 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %42, i32 0, i32 1
  %44 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %43, align 8
  %45 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %46 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %47 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %47, i32 0, i32 0
  %49 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %48, align 8
  %50 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %51 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %52 = call i32 %49(%struct.ds1685_priv* %50, i32 %51)
  %53 = load i32, i32* @RTC_CTRL_4A_RWK_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 %44(%struct.ds1685_priv* %45, i32 %46, i32 %55)
  ret i32 0
}

declare dso_local %struct.ds1685_priv* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
