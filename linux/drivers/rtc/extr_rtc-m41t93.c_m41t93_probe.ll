; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t93.c_m41t93_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.rtc_device = type { i32 }

@M41T93_REG_WDAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"not found 0x%x.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@m41t93_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@m41t93_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @m41t93_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t93_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call i32 @spi_setup(%struct.spi_device* %8)
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = load i32, i32* @M41T93_REG_WDAY, align 4
  %12 = call i32 @spi_w8r8(%struct.spi_device* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 248
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %15
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m41t93_driver, i32 0, i32 0, i32 0), align 4
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call %struct.rtc_device* @devm_rtc_device_register(i32* %28, i32 %29, i32* @m41t93_rtc_ops, i32 %30)
  store %struct.rtc_device* %31, %struct.rtc_device** %4, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %33 = call i64 @IS_ERR(%struct.rtc_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.rtc_device* %36)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.rtc_device* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %35, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
