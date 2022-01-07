; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.abeoz9_rtc_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ABEOZ9_SEC_LEN = common dso_local global i32 0, align 4
@ABEOZ9_REG_SEC = common dso_local global i64 0, align 8
@ABEOZ9_REG_MIN = common dso_local global i64 0, align 8
@ABEOZ9_REG_HOURS = common dso_local global i64 0, align 8
@ABEOZ9_REG_DAYS = common dso_local global i64 0, align 8
@ABEOZ9_REG_WEEKDAYS = common dso_local global i64 0, align 8
@ABEOZ9_REG_MONTHS = common dso_local global i64 0, align 8
@ABEOZ9_REG_YEARS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"set RTC time failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @abeoz9_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abeoz9_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.abeoz9_rtc_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.abeoz9_rtc_data* %13, %struct.abeoz9_rtc_data** %6, align 8
  %14 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %15 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %7, align 8
  %17 = load i32, i32* @ABEOZ9_SEC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bin2bcd(i64 %23)
  %25 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %26 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bin2bcd(i64 %31)
  %33 = load i64, i64* @ABEOZ9_REG_MIN, align 8
  %34 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %20, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bin2bcd(i64 %39)
  %41 = load i64, i64* @ABEOZ9_REG_HOURS, align 8
  %42 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %20, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bin2bcd(i64 %47)
  %49 = load i64, i64* @ABEOZ9_REG_DAYS, align 8
  %50 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %20, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bin2bcd(i64 %55)
  %57 = load i64, i64* @ABEOZ9_REG_WEEKDAYS, align 8
  %58 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %20, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @bin2bcd(i64 %64)
  %66 = load i64, i64* @ABEOZ9_REG_MONTHS, align 8
  %67 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 100
  %74 = call i32 @bin2bcd(i64 %73)
  %75 = load i64, i64* @ABEOZ9_REG_YEARS, align 8
  %76 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %20, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %80 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %79, i32 0, i32 0
  %81 = load %struct.regmap*, %struct.regmap** %80, align 8
  %82 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %83 = mul nuw i64 4, %18
  %84 = trunc i64 %83 to i32
  %85 = call i32 @regmap_bulk_write(%struct.regmap* %81, i64 %82, i32* %20, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %2
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %96

93:                                               ; preds = %2
  %94 = load %struct.regmap*, %struct.regmap** %7, align 8
  %95 = call i32 @abeoz9_reset_validity(%struct.regmap* %94)
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @abeoz9_reset_validity(%struct.regmap*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
