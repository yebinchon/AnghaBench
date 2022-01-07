; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_timestamp0_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_timestamp0_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rv3028_data = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }

@RV3028_TS_COUNT = common dso_local global i32 0, align 4
@RV3028_TS_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @timestamp0_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timestamp0_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rv3028_data*, align 8
  %9 = alloca %struct.rtc_time, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rv3028_data* @dev_get_drvdata(i32 %15)
  store %struct.rv3028_data* %16, %struct.rv3028_data** %8, align 8
  %17 = load %struct.rv3028_data*, %struct.rv3028_data** %8, align 8
  %18 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RV3028_TS_COUNT, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %77

30:                                               ; preds = %26
  %31 = load %struct.rv3028_data*, %struct.rv3028_data** %8, align 8
  %32 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RV3028_TS_SEC, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %36 = call i32 @regmap_bulk_read(i32 %33, i32 %34, i32* %35, i32 24)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %30
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = call i8* @bcd2bin(i32 %43)
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bcd2bin(i32 %47)
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 4
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  %59 = load i32, i32* %58, align 16
  %60 = call i8* @bcd2bin(i32 %59)
  %61 = getelementptr i8, i8* %60, i64 -1
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @bcd2bin(i32 %64)
  %66 = getelementptr i8, i8* %65, i64 100
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = call i32 @rtc_valid_tm(%struct.rtc_time* %9)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %41
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %9)
  %76 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %71, %39, %29, %24
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
