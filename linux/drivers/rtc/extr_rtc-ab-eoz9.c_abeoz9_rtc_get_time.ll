; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.abeoz9_rtc_data = type { i32 }

@ABEOZ9_SEC_LEN = common dso_local global i32 0, align 4
@ABEOZ9_REG_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"reading RTC time failed (%d)\0A\00", align 1
@ABEOZ9_REG_MIN = common dso_local global i64 0, align 8
@ABEOZ9_REG_HOURS = common dso_local global i64 0, align 8
@ABEOZ9_HOURS_PM = common dso_local global i32 0, align 4
@ABEOZ9_REG_DAYS = common dso_local global i64 0, align 8
@ABEOZ9_REG_WEEKDAYS = common dso_local global i64 0, align 8
@ABEOZ9_REG_MONTHS = common dso_local global i64 0, align 8
@ABEOZ9_REG_YEARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @abeoz9_rtc_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abeoz9_rtc_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.abeoz9_rtc_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.abeoz9_rtc_data* %12, %struct.abeoz9_rtc_data** %6, align 8
  %13 = load i32, i32* @ABEOZ9_SEC_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @abeoz9_check_validity(%struct.device* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %136

23:                                               ; preds = %2
  %24 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %25 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %28 = mul nuw i64 4, %14
  %29 = trunc i64 %28 to i32
  %30 = call i32 @regmap_bulk_read(i32 %26, i64 %27, i32* %16, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %136

38:                                               ; preds = %23
  %39 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %40 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %41 = sub i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %16, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 127
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @ABEOZ9_REG_MIN, align 8
  %49 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %50 = sub i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %16, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* @ABEOZ9_REG_HOURS, align 8
  %58 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %16, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ABEOZ9_HOURS_PM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %38
  %66 = load i64, i64* @ABEOZ9_REG_HOURS, align 8
  %67 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 31
  %72 = call i8* @bcd2bin(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @ABEOZ9_REG_HOURS, align 8
  %77 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %78 = sub i64 %76, %77
  %79 = getelementptr inbounds i32, i32* %16, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ABEOZ9_HOURS_PM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %65
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 12
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %65
  br label %100

90:                                               ; preds = %38
  %91 = load i64, i64* @ABEOZ9_REG_HOURS, align 8
  %92 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds i32, i32* %16, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @bcd2bin(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %90, %89
  %101 = load i64, i64* @ABEOZ9_REG_DAYS, align 8
  %102 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i32, i32* %16, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @bcd2bin(i32 %105)
  %107 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* @ABEOZ9_REG_WEEKDAYS, align 8
  %110 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds i32, i32* %16, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @bcd2bin(i32 %113)
  %115 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* @ABEOZ9_REG_MONTHS, align 8
  %118 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %119 = sub i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %16, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @bcd2bin(i32 %121)
  %123 = getelementptr i8, i8* %122, i64 -1
  %124 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* @ABEOZ9_REG_YEARS, align 8
  %127 = load i64, i64* @ABEOZ9_REG_SEC, align 8
  %128 = sub i64 %126, %127
  %129 = getelementptr inbounds i32, i32* %16, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @bcd2bin(i32 %130)
  %132 = getelementptr i8, i8* %131, i64 100
  %133 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %136

136:                                              ; preds = %100, %33, %21
  %137 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @abeoz9_check_validity(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
