; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPTAR = common dso_local global i64 0, align 8
@SNVS_LPSR = common dso_local global i64 0, align 8
@SNVS_LPSR_LPTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @snvs_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.snvs_rtc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.snvs_rtc_data* %9, %struct.snvs_rtc_data** %5, align 8
  %10 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %11 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %14 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNVS_LPTAR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @regmap_read(i32 %12, i64 %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = call i32 @rtc_time64_to_tm(i32 %19, i32* %21)
  %23 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %24 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %27 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNVS_LPSR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @regmap_read(i32 %25, i64 %30, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SNVS_LPSR_LPTA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
