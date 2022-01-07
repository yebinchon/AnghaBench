; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm80x_rtc_info = type { i32, i32 }

@PM800_RTC_EXPIRE2_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%x-%x-%x-%x\0A\00", align 1
@PM800_RTC_COUNTER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm80x_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.pm80x_rtc_info*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pm80x_rtc_info* @dev_get_drvdata(%struct.device* %10)
  store %struct.pm80x_rtc_info* %11, %struct.pm80x_rtc_info** %5, align 8
  %12 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %13 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PM800_RTC_EXPIRE2_1, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %17 = call i32 @regmap_raw_read(i32 %14, i32 %15, i8* %16, i32 4)
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i64
  %21 = shl i64 %20, 24
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 16
  %26 = sext i32 %25 to i64
  %27 = or i64 %21, %26
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = or i64 %27, %32
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = or i64 %33, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %39 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %46, i64 %49, i32 %52)
  %54 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %55 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PM800_RTC_COUNTER1, align 4
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %59 = call i32 @regmap_raw_read(i32 %56, i32 %57, i8* %58, i32 4)
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = shl i64 %62, 24
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 16
  %68 = sext i32 %67 to i64
  %69 = or i64 %63, %68
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = or i64 %69, %74
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = or i64 %75, %78
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %80, %81
  store i64 %82, i64* %7, align 8
  %83 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %84 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = call i32 @rtc_time64_to_tm(i64 %90, %struct.rtc_time* %91)
  ret i32 0
}

declare dso_local %struct.pm80x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
