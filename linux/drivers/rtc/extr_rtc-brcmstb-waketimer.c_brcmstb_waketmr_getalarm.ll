; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_getalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_getalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.brcmstb_waketmr = type { i64 }

@BRCMSTB_WKTMR_ALARM = common dso_local global i64 0, align 8
@BRCMSTB_WKTMR_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @brcmstb_waketmr_getalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_waketmr_getalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.brcmstb_waketmr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.brcmstb_waketmr* @dev_get_drvdata(%struct.device* %8)
  store %struct.brcmstb_waketmr* %9, %struct.brcmstb_waketmr** %5, align 8
  %10 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %11 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BRCMSTB_WKTMR_ALARM, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readl_relaxed(i64 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 2
  %25 = call i32 @rtc_time64_to_tm(i64 %22, i32* %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %28 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRCMSTB_WKTMR_EVENT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i8* @readl_relaxed(i64 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret i32 0
}

declare dso_local %struct.brcmstb_waketmr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
