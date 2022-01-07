; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.cpcap_rtc = type { i32, i32 }
%struct.cpcap_time = type { i32, i32, i32 }

@CPCAP_REG_DAYA = common dso_local global i32 0, align 4
@CPCAP_REG_TODA2 = common dso_local global i32 0, align 4
@CPCAP_REG_TODA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cpcap_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cpcap_rtc*, align 8
  %7 = alloca %struct.cpcap_time, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.cpcap_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.cpcap_rtc* %10, %struct.cpcap_rtc** %6, align 8
  %11 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %12 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CPCAP_REG_DAYA, align 4
  %20 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 2
  %21 = call i32 @regmap_read(i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %23 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CPCAP_REG_TODA2, align 4
  %26 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 1
  %27 = call i32 @regmap_read(i32 %24, i32 %25, i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CPCAP_REG_TODA1, align 4
  %34 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 0
  %35 = call i32 @regmap_read(i32 %32, i32 %33, i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %2
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 0
  %48 = call i32 @cpcap2rtc_time(i32* %47, %struct.cpcap_time* %7)
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 0
  %51 = call i32 @rtc_valid_tm(i32* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.cpcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpcap2rtc_time(i32*, %struct.cpcap_time*) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
