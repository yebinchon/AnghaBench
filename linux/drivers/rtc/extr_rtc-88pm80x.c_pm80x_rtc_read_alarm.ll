; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.pm80x_rtc_info = type { i32, i32 }

@PM800_RTC_EXPIRE2_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%x-%x-%x-%x\0A\00", align 1
@PM800_RTC_EXPIRE1_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@PM800_RTC_CONTROL = common dso_local global i32 0, align 4
@PM800_ALARM1_EN = common dso_local global i32 0, align 4
@PM800_ALARM = common dso_local global i32 0, align 4
@PM800_ALARM_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pm80x_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pm80x_rtc_info*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.pm80x_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.pm80x_rtc_info* %12, %struct.pm80x_rtc_info** %5, align 8
  %13 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %14 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PM800_RTC_EXPIRE2_1, align 4
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %18 = call i32 @regmap_raw_read(i32 %15, i32 %16, i8* %17, i32 4)
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl i64 %21, 24
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = or i64 %22, %27
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = or i64 %28, %33
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = or i64 %34, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %40 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %47, i64 %50, i32 %53)
  %55 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %56 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PM800_RTC_EXPIRE1_1, align 4
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %60 = call i32 @regmap_raw_read(i32 %57, i32 %58, i8* %59, i32 4)
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = shl i64 %63, 24
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 16
  %69 = sext i32 %68 to i64
  %70 = or i64 %64, %69
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = or i64 %70, %75
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = or i64 %76, %79
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %81, %82
  store i64 %83, i64* %7, align 8
  %84 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %85 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %87, i64 %88, i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %93 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %92, i32 0, i32 2
  %94 = call i32 @rtc_time64_to_tm(i64 %91, i32* %93)
  %95 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %96 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PM800_RTC_CONTROL, align 4
  %99 = call i32 @regmap_read(i32 %97, i32 %98, i32* %10)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @PM800_ALARM1_EN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %107 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @PM800_ALARM, align 4
  %110 = load i32, i32* @PM800_ALARM_WAKEUP, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %117 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  ret i32 0
}

declare dso_local %struct.pm80x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
