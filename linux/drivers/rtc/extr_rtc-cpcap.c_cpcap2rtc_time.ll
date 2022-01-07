; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap2rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap2rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }
%struct.cpcap_time = type { i32, i32, i64 }

@TOD1_MASK = common dso_local global i32 0, align 4
@TOD2_MASK = common dso_local global i32 0, align 4
@DAY_MASK = common dso_local global i64 0, align 8
@SECS_PER_DAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, %struct.cpcap_time*)* @cpcap2rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap2rtc_time(%struct.rtc_time* %0, %struct.cpcap_time* %1) #0 {
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.cpcap_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store %struct.cpcap_time* %1, %struct.cpcap_time** %4, align 8
  %7 = load %struct.cpcap_time*, %struct.cpcap_time** %4, align 8
  %8 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TOD1_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.cpcap_time*, %struct.cpcap_time** %4, align 8
  %13 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TOD2_MASK, align 4
  %16 = and i32 %14, %15
  %17 = shl i32 %16, 8
  %18 = or i32 %11, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.cpcap_time*, %struct.cpcap_time** %4, align 8
  %22 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DAY_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @SECS_PER_DAY, align 8
  %27 = mul i64 %25, %26
  %28 = add i64 %20, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %31 = call i32 @rtc_time_to_tm(i64 %29, %struct.rtc_time* %30)
  ret void
}

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
