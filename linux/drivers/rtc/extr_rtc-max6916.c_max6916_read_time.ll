; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@MAX6916_CLOCK_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6916_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6916_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.spi_device* @to_spi_device(%struct.device* %9)
  store %struct.spi_device* %10, %struct.spi_device** %6, align 8
  %11 = load i32, i32* @MAX6916_CLOCK_BURST, align 4
  %12 = or i32 %11, 128
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %18 = call i32 @spi_write_then_read(%struct.spi_device* %15, i8* %16, i32 1, i8* %17, i32 8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = call i8* @bcd2bin(i8 zeroext %25)
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = call i8* @bcd2bin(i8 zeroext %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = trunc i32 %37 to i8
  %39 = call i8* @bcd2bin(i8 zeroext %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @bcd2bin(i8 zeroext %43)
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  %48 = load i8, i8* %47, align 1
  %49 = call i8* @bcd2bin(i8 zeroext %48)
  %50 = getelementptr i8, i8* %49, i64 -1
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = call i8* @bcd2bin(i8 zeroext %54)
  %56 = getelementptr i8, i8* %55, i64 -1
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 6
  %60 = load i8, i8* %59, align 1
  %61 = call i8* @bcd2bin(i8 zeroext %60)
  %62 = getelementptr i8, i8* %61, i64 100
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %23, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i8*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
