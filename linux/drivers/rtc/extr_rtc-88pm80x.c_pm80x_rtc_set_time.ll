; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm80x_rtc_info = type { i32, i32 }

@PM800_RTC_COUNTER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"set base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@PM800_RTC_EXPIRE2_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm80x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %15 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PM800_RTC_COUNTER1, align 4
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %19 = call i32 @regmap_raw_read(i32 %16, i32 %17, i8* %18, i32 4)
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = shl i64 %22, 24
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = or i64 %23, %28
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = or i64 %29, %34
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = or i64 %35, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %44 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = and i64 %50, 255
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = load i64, i64* %8, align 8
  %55 = lshr i64 %54, 8
  %56 = and i64 %55, 255
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %57, i8* %58, align 1
  %59 = load i64, i64* %8, align 8
  %60 = lshr i64 %59, 16
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %62, i8* %63, align 1
  %64 = load i64, i64* %8, align 8
  %65 = lshr i64 %64, 24
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 %67, i8* %68, align 1
  %69 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %5, align 8
  %70 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PM800_RTC_EXPIRE2_1, align 4
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %74 = call i32 @regmap_raw_write(i32 %71, i32 %72, i8* %73, i32 4)
  ret i32 0
}

declare dso_local %struct.pm80x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
