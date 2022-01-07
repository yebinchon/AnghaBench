; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_rdxr_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_rdxr_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32 }

@RDxR_WOM_S = common dso_local global i32 0, align 4
@RDxR_WOM_MASK = common dso_local global i32 0, align 4
@RDxR_DOW_S = common dso_local global i32 0, align 4
@RDxR_DOW_MASK = common dso_local global i32 0, align 4
@RDxR_HOUR_S = common dso_local global i32 0, align 4
@RDxR_MIN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @rdxr_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdxr_calc(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %3 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 6
  %7 = sdiv i32 %6, 7
  %8 = load i32, i32* @RDxR_WOM_S, align 4
  %9 = shl i32 %7, %8
  %10 = load i32, i32* @RDxR_WOM_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @RDxR_DOW_S, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* @RDxR_DOW_MASK, align 4
  %19 = and i32 %17, %18
  %20 = or i32 %11, %19
  %21 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RDxR_HOUR_S, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %20, %25
  %27 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RDxR_MIN_S, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
