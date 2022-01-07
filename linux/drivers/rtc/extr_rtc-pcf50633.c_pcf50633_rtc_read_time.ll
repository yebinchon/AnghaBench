; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pcf50633_rtc = type { i32 }
%struct.pcf50633_time = type { i32* }

@PCF50633_REG_RTCSC = common dso_local global i32 0, align 4
@PCF50633_TI_EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\0A\00", align 1
@PCF50633_TI_DAY = common dso_local global i64 0, align 8
@PCF50633_TI_MONTH = common dso_local global i64 0, align 8
@PCF50633_TI_YEAR = common dso_local global i64 0, align 8
@PCF50633_TI_HOUR = common dso_local global i64 0, align 8
@PCF50633_TI_MIN = common dso_local global i64 0, align 8
@PCF50633_TI_SEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"RTC_TIME: %ptRr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf50633_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.pcf50633_rtc*, align 8
  %7 = alloca %struct.pcf50633_time, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf50633_rtc* %10, %struct.pcf50633_rtc** %6, align 8
  %11 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %6, align 8
  %12 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCF50633_REG_RTCSC, align 4
  %15 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %16 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @pcf50633_read_block(i32 %13, i32 %14, i32 %15, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @PCF50633_TI_DAY, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.rtc_time*
  %37 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @PCF50633_TI_MONTH, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @PCF50633_TI_YEAR, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @PCF50633_TI_HOUR, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @PCF50633_TI_MIN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PCF50633_TI_SEC, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.device*, i8*, %struct.rtc_time*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.rtc_time* %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %61)
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = call i32 @pcf2rtc_time(%struct.rtc_time* %63, %struct.pcf50633_time* %7)
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = call i32 (%struct.device*, i8*, %struct.rtc_time*, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.rtc_time* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %28, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pcf50633_read_block(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*, ...) #1

declare dso_local i32 @pcf2rtc_time(%struct.rtc_time*, %struct.pcf50633_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
