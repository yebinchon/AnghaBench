; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_ryxr_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_ryxr_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32 }

@RYxR_YEAR_S = common dso_local global i32 0, align 4
@RYxR_MONTH_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @ryxr_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ryxr_calc(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %3 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1900
  %7 = load i32, i32* @RYxR_YEAR_S, align 4
  %8 = shl i32 %6, %7
  %9 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @RYxR_MONTH_S, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %8, %14
  %16 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
