; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@RTC_CLCK_BURST = common dso_local global i32 0, align 4
@RTC_CMD_READ = common dso_local global i32 0, align 4
@RTC_CLCK_LEN = common dso_local global i32 0, align 4
@RTC_ADDR_SEC = common dso_local global i64 0, align 8
@RTC_ADDR_MIN = common dso_local global i64 0, align 8
@RTC_ADDR_HOUR = common dso_local global i64 0, align 8
@RTC_ADDR_DAY = common dso_local global i64 0, align 8
@RTC_ADDR_DATE = common dso_local global i64 0, align 8
@RTC_ADDR_MON = common dso_local global i64 0, align 8
@RTC_ADDR_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1302_rtc_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1302_rtc_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %6, align 8
  %14 = load i32, i32* @RTC_CLCK_BURST, align 4
  %15 = shl i32 %14, 1
  %16 = load i32, i32* @RTC_CMD_READ, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RTC_CLCK_LEN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %24 = mul nuw i64 4, %20
  %25 = trunc i64 %24 to i32
  %26 = call i32 @spi_write_then_read(%struct.spi_device* %23, i32* %7, i32 4, i32* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

31:                                               ; preds = %2
  %32 = load i64, i64* @RTC_ADDR_SEC, align 8
  %33 = getelementptr inbounds i32, i32* %22, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @bcd2bin(i32 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @RTC_ADDR_MIN, align 8
  %39 = getelementptr inbounds i32, i32* %22, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @bcd2bin(i32 %40)
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @RTC_ADDR_HOUR, align 8
  %45 = getelementptr inbounds i32, i32* %22, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @RTC_ADDR_DAY, align 8
  %51 = getelementptr inbounds i32, i32* %22, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* @RTC_ADDR_DATE, align 8
  %57 = getelementptr inbounds i32, i32* %22, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @bcd2bin(i32 %58)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @RTC_ADDR_MON, align 8
  %63 = getelementptr inbounds i32, i32* %22, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @bcd2bin(i32 %64)
  %66 = getelementptr i8, i8* %65, i64 -1
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @RTC_ADDR_YEAR, align 8
  %70 = getelementptr inbounds i32, i32* %22, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @bcd2bin(i32 %71)
  %73 = getelementptr i8, i8* %72, i64 100
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %31, %29
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.spi_device* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

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
