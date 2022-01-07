; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc.c_mxc_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc.c_mxc_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.rtc_plat_data = type { i32 }

@RTC_ALM_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mxc_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.rtc_plat_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rtc_plat_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.rtc_plat_data* %7, %struct.rtc_plat_data** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  %11 = call i32 @rtc_update_alarm(%struct.device* %8, i32* %10)
  %12 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %12, i32 0, i32 0
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %16 = call i32 @memcpy(i32* %13, i32* %15, i32 4)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* @RTC_ALM_BIT, align 4
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mxc_rtc_irq_enable(%struct.device* %17, i32 %18, i32 %21)
  ret i32 0
}

declare dso_local %struct.rtc_plat_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_update_alarm(%struct.device*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mxc_rtc_irq_enable(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
