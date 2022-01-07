; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rv3028_data = type { i32 }

@RV3028_SEC = common dso_local global i64 0, align 8
@RV3028_MIN = common dso_local global i64 0, align 8
@RV3028_HOUR = common dso_local global i64 0, align 8
@RV3028_WDAY = common dso_local global i64 0, align 8
@RV3028_DAY = common dso_local global i64 0, align 8
@RV3028_MONTH = common dso_local global i64 0, align 8
@RV3028_YEAR = common dso_local global i64 0, align 8
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_PORF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rv3028_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.rv3028_data* %10, %struct.rv3028_data** %6, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @bin2bcd(i64 %13)
  %15 = load i64, i64* @RV3028_SEC, align 8
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %15
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bin2bcd(i64 %19)
  %21 = load i64, i64* @RV3028_MIN, align 8
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %21
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bin2bcd(i64 %25)
  %27 = load i64, i64* @RV3028_HOUR, align 8
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = load i64, i64* @RV3028_WDAY, align 8
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bin2bcd(i64 %37)
  %39 = load i64, i64* @RV3028_DAY, align 8
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @bin2bcd(i64 %44)
  %46 = load i64, i64* @RV3028_MONTH, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %46
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 100
  %52 = call i32 @bin2bcd(i64 %51)
  %53 = load i64, i64* @RV3028_YEAR, align 8
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %53
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %56 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @RV3028_SEC, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %60 = call i32 @regmap_bulk_write(i32 %57, i64 %58, i32* %59, i32 28)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %2
  %66 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %67 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RV3028_STATUS, align 4
  %70 = load i32, i32* @RV3028_STATUS_PORF, align 4
  %71 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %63
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
