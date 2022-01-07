; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.brcmstb_waketmr = type { i32 }
%struct.wktmr_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @brcmstb_waketmr_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_waketmr_gettime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.brcmstb_waketmr*, align 8
  %6 = alloca %struct.wktmr_time, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.brcmstb_waketmr* @dev_get_drvdata(%struct.device* %7)
  store %struct.brcmstb_waketmr* %8, %struct.brcmstb_waketmr** %5, align 8
  %9 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %10 = call i32 @wktmr_read(%struct.brcmstb_waketmr* %9, %struct.wktmr_time* %6)
  %11 = getelementptr inbounds %struct.wktmr_time, %struct.wktmr_time* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = call i32 @rtc_time64_to_tm(i32 %12, %struct.rtc_time* %13)
  ret i32 0
}

declare dso_local %struct.brcmstb_waketmr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wktmr_read(%struct.brcmstb_waketmr*, %struct.wktmr_time*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
