; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.rtc_device* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)* }
%struct.rtc_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@omap_rtc_power_off_rtc = common dso_local global %struct.TYPE_10__* null, align 8
@OMAP_RTC_PMIC_REG = common dso_local global i32 0, align 4
@OMAP_RTC_PMIC_POWER_EN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap_rtc_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_rtc_power_off() #0 {
  %1 = alloca %struct.rtc_device*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %5 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  store %struct.rtc_device* %5, %struct.rtc_device** %1, align 8
  %6 = load %struct.rtc_device*, %struct.rtc_device** %1, align 8
  %7 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @omap_rtc_power_off_program(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %17 = call i32 %15(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %19 = load i32, i32* @OMAP_RTC_PMIC_REG, align 4
  %20 = call i32 @rtc_readl(%struct.TYPE_10__* %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @OMAP_RTC_PMIC_POWER_EN_EN, align 4
  %22 = call i32 @OMAP_RTC_PMIC_EXT_WKUP_POL(i32 0)
  %23 = or i32 %21, %22
  %24 = call i32 @OMAP_RTC_PMIC_EXT_WKUP_EN(i32 0)
  %25 = or i32 %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %29 = load i32, i32* @OMAP_RTC_PMIC_REG, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @rtc_writel(%struct.TYPE_10__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_rtc_power_off_rtc, align 8
  %38 = call i32 %36(%struct.TYPE_10__* %37)
  %39 = call i32 @mdelay(i32 1500)
  ret void
}

declare dso_local i32 @omap_rtc_power_off_program(i32) #1

declare dso_local i32 @rtc_readl(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @OMAP_RTC_PMIC_EXT_WKUP_POL(i32) #1

declare dso_local i32 @OMAP_RTC_PMIC_EXT_WKUP_EN(i32) #1

declare dso_local i32 @rtc_writel(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
