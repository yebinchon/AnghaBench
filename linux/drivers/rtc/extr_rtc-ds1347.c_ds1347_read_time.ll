; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }
%struct.regmap = type { i32 }

@DS1347_CLOCK_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1347_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1347_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = call %struct.regmap* @spi_get_drvdata(%struct.spi_device* %12)
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  %14 = load %struct.regmap*, %struct.regmap** %7, align 8
  %15 = load i32, i32* @DS1347_CLOCK_BURST, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %17 = call i32 @regmap_bulk_read(%struct.regmap* %14, i32 %15, i8* %16, i32 8)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = call i8* @bcd2bin(i8 zeroext %24)
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i8* @bcd2bin(i8 zeroext %29)
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 63
  %37 = trunc i32 %36 to i8
  %38 = call i8* @bcd2bin(i8 zeroext %37)
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = call i8* @bcd2bin(i8 zeroext %42)
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @bcd2bin(i8 zeroext %47)
  %49 = getelementptr i8, i8* %48, i64 -1
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @bcd2bin(i8 zeroext %53)
  %55 = getelementptr i8, i8* %54, i64 -1
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  %59 = load i8, i8* %58, align 1
  %60 = call i8* @bcd2bin(i8 zeroext %59)
  %61 = getelementptr i8, i8* %60, i64 100
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %22, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.regmap* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i8*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
