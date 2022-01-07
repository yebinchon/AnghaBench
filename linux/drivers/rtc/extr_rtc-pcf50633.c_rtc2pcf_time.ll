; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_rtc2pcf_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_rtc2pcf_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633_time = type { i8** }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@PCF50633_TI_SEC = common dso_local global i64 0, align 8
@PCF50633_TI_MIN = common dso_local global i64 0, align 8
@PCF50633_TI_HOUR = common dso_local global i64 0, align 8
@PCF50633_TI_WKDAY = common dso_local global i64 0, align 8
@PCF50633_TI_DAY = common dso_local global i64 0, align 8
@PCF50633_TI_MONTH = common dso_local global i64 0, align 8
@PCF50633_TI_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcf50633_time*, %struct.rtc_time*)* @rtc2pcf_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc2pcf_time(%struct.pcf50633_time* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.pcf50633_time*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.pcf50633_time* %0, %struct.pcf50633_time** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @bin2bcd(i32 %7)
  %9 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %10 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i64, i64* @PCF50633_TI_SEC, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  store i8* %8, i8** %13, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @bin2bcd(i32 %16)
  %18 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %19 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* @PCF50633_TI_MIN, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  store i8* %17, i8** %22, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @bin2bcd(i32 %25)
  %27 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %28 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* @PCF50633_TI_HOUR, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @bin2bcd(i32 %34)
  %36 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %37 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* @PCF50633_TI_WKDAY, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  store i8* %35, i8** %40, align 8
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @bin2bcd(i32 %43)
  %45 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %46 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* @PCF50633_TI_DAY, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i8* @bin2bcd(i32 %53)
  %55 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %56 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @PCF50633_TI_MONTH, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %62, 100
  %64 = call i8* @bin2bcd(i32 %63)
  %65 = load %struct.pcf50633_time*, %struct.pcf50633_time** %3, align 8
  %66 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @PCF50633_TI_YEAR, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  ret void
}

declare dso_local i8* @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
