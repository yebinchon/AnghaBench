; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6902.c_max6902_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6902.c_max6902_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.rtc_device = type { i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@MAX6902_REG_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"max6902\00", align 1
@max6902_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max6902_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6902_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @SPI_MODE_3, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call i32 @spi_setup(%struct.spi_device* %12)
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* @MAX6902_REG_SECONDS, align 4
  %17 = call i32 @max6902_get_reg(i32* %15, i32 %16, i8* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = call %struct.rtc_device* @devm_rtc_device_register(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @max6902_rtc_ops, i32 %25)
  store %struct.rtc_device* %26, %struct.rtc_device** %4, align 8
  %27 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %28 = call i64 @IS_ERR(%struct.rtc_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %32 = call i32 @PTR_ERR(%struct.rtc_device* %31)
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %36 = call i32 @spi_set_drvdata(%struct.spi_device* %34, %struct.rtc_device* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %30, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @max6902_get_reg(i32*, i32, i8*) #1

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
