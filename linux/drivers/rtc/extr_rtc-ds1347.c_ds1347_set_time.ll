; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }
%struct.regmap = type { i32 }

@DS1347_CLOCK_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1347_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1347_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.spi_device* @to_spi_device(%struct.device* %8)
  store %struct.spi_device* %9, %struct.spi_device** %5, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = call %struct.regmap* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bin2bcd(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bin2bcd(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bin2bcd(i32 %26)
  %28 = and i32 %27, 63
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 2
  store i8 %29, i8* %30, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bin2bcd(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @bin2bcd(i32 %40)
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 4
  store i8 %42, i8* %43, align 1
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 5
  store i8 %49, i8* %50, align 1
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 100
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bin2bcd(i32 %59)
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 6
  store i8 %61, i8* %62, align 1
  %63 = call i32 @bin2bcd(i32 0)
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7
  store i8 %64, i8* %65, align 1
  %66 = load %struct.regmap*, %struct.regmap** %6, align 8
  %67 = load i32, i32* @DS1347_CLOCK_BURST, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %69 = call i32 @regmap_bulk_write(%struct.regmap* %66, i32 %67, i8* %68, i32 8)
  ret i32 %69
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.regmap* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
