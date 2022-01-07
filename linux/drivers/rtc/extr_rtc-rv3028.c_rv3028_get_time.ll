; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.rv3028_data = type { i32 }

@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_PORF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Voltage low, data is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RV3028_SEC = common dso_local global i64 0, align 8
@RV3028_MIN = common dso_local global i64 0, align 8
@RV3028_HOUR = common dso_local global i64 0, align 8
@RV3028_WDAY = common dso_local global i64 0, align 8
@RV3028_DAY = common dso_local global i64 0, align 8
@RV3028_MONTH = common dso_local global i64 0, align 8
@RV3028_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rv3028_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.rv3028_data* %11, %struct.rv3028_data** %6, align 8
  %12 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %13 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RV3028_STATUS, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @RV3028_STATUS_PORF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %21
  %32 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %33 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RV3028_SEC, align 8
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %37 = call i32 @regmap_bulk_read(i32 %34, i64 %35, i32* %36, i32 28)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %31
  %43 = load i64, i64* @RV3028_SEC, align 8
  %44 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @RV3028_MIN, align 8
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* @RV3028_HOUR, align 8
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 63
  %61 = call i8* @bcd2bin(i32 %60)
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* @RV3028_WDAY, align 8
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 127
  %68 = call i32 @ilog2(i32 %67)
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* @RV3028_DAY, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  %75 = call i8* @bcd2bin(i32 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* @RV3028_MONTH, align 8
  %79 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 31
  %82 = call i8* @bcd2bin(i32 %81)
  %83 = getelementptr i8, i8* %82, i64 -1
  %84 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* @RV3028_YEAR, align 8
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @bcd2bin(i32 %88)
  %90 = getelementptr i8, i8* %89, i64 100
  %91 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %42, %40, %26, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regmap_bulk_read(i32, i64, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
