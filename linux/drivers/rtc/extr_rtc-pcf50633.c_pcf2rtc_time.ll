; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf2rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf2rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pcf50633_time = type { i32* }

@PCF50633_TI_SEC = common dso_local global i64 0, align 8
@PCF50633_TI_MIN = common dso_local global i64 0, align 8
@PCF50633_TI_HOUR = common dso_local global i64 0, align 8
@PCF50633_TI_WKDAY = common dso_local global i64 0, align 8
@PCF50633_TI_DAY = common dso_local global i64 0, align 8
@PCF50633_TI_MONTH = common dso_local global i64 0, align 8
@PCF50633_TI_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, %struct.pcf50633_time*)* @pcf2rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf2rtc_time(%struct.rtc_time* %0, %struct.pcf50633_time* %1) #0 {
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.pcf50633_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store %struct.pcf50633_time* %1, %struct.pcf50633_time** %4, align 8
  %5 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %6 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @PCF50633_TI_SEC, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @bcd2bin(i32 %10)
  %12 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %15 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @PCF50633_TI_MIN, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %24 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @PCF50633_TI_HOUR, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @bcd2bin(i32 %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %33 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PCF50633_TI_WKDAY, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @bcd2bin(i32 %37)
  %39 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %42 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @PCF50633_TI_DAY, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %51 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @PCF50633_TI_MONTH, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = getelementptr i8, i8* %56, i64 -1
  %58 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.pcf50633_time*, %struct.pcf50633_time** %4, align 8
  %61 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @PCF50633_TI_YEAR, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @bcd2bin(i32 %65)
  %67 = getelementptr i8, i8* %66, i64 100
  %68 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
