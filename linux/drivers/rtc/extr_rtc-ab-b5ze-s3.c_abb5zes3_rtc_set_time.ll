; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-b5ze-s3.c_abb5zes3_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-b5ze-s3.c_abb5zes3_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.abb5zes3_rtc_data = type { i32 }

@ABB5ZES3_REG_RTC_SC = common dso_local global i64 0, align 8
@ABB5ZES3_RTC_SEC_LEN = common dso_local global i32 0, align 4
@ABB5ZES3_REG_RTC_MN = common dso_local global i64 0, align 8
@ABB5ZES3_REG_RTC_HR = common dso_local global i64 0, align 8
@ABB5ZES3_REG_RTC_DT = common dso_local global i64 0, align 8
@ABB5ZES3_REG_RTC_DW = common dso_local global i64 0, align 8
@ABB5ZES3_REG_RTC_MO = common dso_local global i64 0, align 8
@ABB5ZES3_REG_RTC_YR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @abb5zes3_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abb5zes3_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.abb5zes3_rtc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.abb5zes3_rtc_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.abb5zes3_rtc_data* %10, %struct.abb5zes3_rtc_data** %5, align 8
  %11 = load i64, i64* @ABB5ZES3_REG_RTC_SC, align 8
  %12 = load i32, i32* @ABB5ZES3_RTC_SEC_LEN, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bin2bcd(i64 %19)
  %21 = load i64, i64* @ABB5ZES3_REG_RTC_SC, align 8
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bin2bcd(i64 %25)
  %27 = load i64, i64* @ABB5ZES3_REG_RTC_MN, align 8
  %28 = getelementptr inbounds i32, i32* %16, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bin2bcd(i64 %31)
  %33 = load i64, i64* @ABB5ZES3_REG_RTC_HR, align 8
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bin2bcd(i64 %37)
  %39 = load i64, i64* @ABB5ZES3_REG_RTC_DT, align 8
  %40 = getelementptr inbounds i32, i32* %16, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @bin2bcd(i64 %43)
  %45 = load i64, i64* @ABB5ZES3_REG_RTC_DW, align 8
  %46 = getelementptr inbounds i32, i32* %16, i64 %45
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @bin2bcd(i64 %50)
  %52 = load i64, i64* @ABB5ZES3_REG_RTC_MO, align 8
  %53 = getelementptr inbounds i32, i32* %16, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 100
  %58 = call i32 @bin2bcd(i64 %57)
  %59 = load i64, i64* @ABB5ZES3_REG_RTC_YR, align 8
  %60 = getelementptr inbounds i32, i32* %16, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load %struct.abb5zes3_rtc_data*, %struct.abb5zes3_rtc_data** %5, align 8
  %62 = getelementptr inbounds %struct.abb5zes3_rtc_data, %struct.abb5zes3_rtc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @ABB5ZES3_REG_RTC_SC, align 8
  %65 = load i64, i64* @ABB5ZES3_REG_RTC_SC, align 8
  %66 = getelementptr inbounds i32, i32* %16, i64 %65
  %67 = load i32, i32* @ABB5ZES3_RTC_SEC_LEN, align 4
  %68 = call i32 @regmap_bulk_write(i32 %63, i64 %64, i32* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

declare dso_local %struct.abb5zes3_rtc_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
