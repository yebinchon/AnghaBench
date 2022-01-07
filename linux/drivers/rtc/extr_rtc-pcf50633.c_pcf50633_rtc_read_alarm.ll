; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.pcf50633_rtc = type { i32, i32, i32 }
%struct.pcf50633_time = type { i32* }

@PCF50633_REG_RTCSCA = common dso_local global i32 0, align 4
@PCF50633_TI_EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf50633_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.pcf50633_rtc*, align 8
  %7 = alloca %struct.pcf50633_time, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf50633_rtc* %10, %struct.pcf50633_rtc** %6, align 8
  %11 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %6, align 8
  %12 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %6, align 8
  %22 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCF50633_REG_RTCSCA, align 4
  %25 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %26 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @pcf50633_read_block(i32 %23, i32 %24, i32 %25, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 0
  %41 = call i32 @pcf2rtc_time(i32* %40, %struct.pcf50633_time* %7)
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 0
  %44 = call i32 @rtc_valid_tm(i32* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pcf50633_read_block(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pcf2rtc_time(i32*, %struct.pcf50633_time*) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
