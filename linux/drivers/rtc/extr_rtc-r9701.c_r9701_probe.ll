; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_r9701_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_r9701_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.rtc_device = type { i32 }
%struct.rtc_time = type { i32, i32, i64, i64, i64, i64 }

@R100CNT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"cannot read RTC register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"trying to repair invalid date/time\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot repair RTC register\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"r9701\00", align 1
@r9701_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @r9701_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9701_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_time, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i8, i8* @R100CNT, align 1
  store i8 %8, i8* %6, align 1
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = call i32 @read_regs(i32* %10, i8* %6, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 32
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = call i64 @r9701_get_datetime(i32* %26, %struct.rtc_time* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 1
  store i32 100, i32* %38, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i64 @r9701_set_datetime(i32* %40, %struct.rtc_time* %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %29
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = call i64 @r9701_get_datetime(i32* %45, %struct.rtc_time* %5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %29
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = call %struct.rtc_device* @devm_rtc_device_register(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @r9701_rtc_ops, i32 %58)
  store %struct.rtc_device* %59, %struct.rtc_device** %4, align 8
  %60 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %61 = call i64 @IS_ERR(%struct.rtc_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %65 = call i32 @PTR_ERR(%struct.rtc_device* %64)
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %55
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %69 = call i32 @spi_set_drvdata(%struct.spi_device* %67, %struct.rtc_device* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %63, %48, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @read_regs(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @r9701_get_datetime(i32*, %struct.rtc_time*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @r9701_set_datetime(i32*, %struct.rtc_time*) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
