; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device = type { i32 }

@RTC_CTRL = common dso_local global i32 0, align 4
@RTC_ENABLE = common dso_local global i32 0, align 4
@OSC_SRC_SEL = common dso_local global i32 0, align 4
@PRE_BYPASS = common dso_local global i32 0, align 4
@CL_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6586x_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.device* @to_tps6586x_dev(i32* %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load i32, i32* @RTC_CTRL, align 4
  %9 = load i32, i32* @RTC_ENABLE, align 4
  %10 = load i32, i32* @OSC_SRC_SEL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PRE_BYPASS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CL_SEL_MASK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @tps6586x_update(%struct.device* %7, i32 %8, i32 0, i32 %15)
  ret i32 0
}

declare dso_local %struct.device* @to_tps6586x_dev(i32*) #1

declare dso_local i32 @tps6586x_update(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
