; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Year must be between 2000 and 2099. It's %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX6916_CLOCK_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6916_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6916_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca [9 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.spi_device* @to_spi_device(%struct.device* %8)
  store %struct.spi_device* %9, %struct.spi_device** %6, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 199
  br i1 %18, label %19, label %29

19:                                               ; preds = %14, %2
  %20 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1900
  %26 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %14
  %30 = load i32, i32* @MAX6916_CLOCK_BURST, align 4
  %31 = and i32 %30, 127
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bin2bcd(i32 %36)
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bin2bcd(i32 %48)
  %50 = and i32 %49, 63
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %51, i8* %52, align 1
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 %57, i8* %58, align 1
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @bin2bcd(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5
  store i8 %64, i8* %65, align 1
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @bin2bcd(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6
  store i8 %71, i8* %72, align 1
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %75, 100
  %77 = call i32 @bin2bcd(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  store i8 %78, i8* %79, align 1
  %80 = call i32 @bin2bcd(i32 0)
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 %81, i8* %82, align 1
  %83 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %84 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %85 = call i32 @spi_write_then_read(%struct.spi_device* %83, i8* %84, i32 9, i32* null, i32 0)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %29, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
