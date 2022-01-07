; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t94.c_m41t94_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t94.c_m41t94_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.rtc_device = type { i32 }

@M41T94_REG_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"not found.\0A\00", align 1
@m41t94_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@m41t94_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @m41t94_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t94_probe(%struct.spi_device* %0) #0 {
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
  %11 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %12 = call i32 @spi_w8r8(%struct.spi_device* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m41t94_driver, i32 0, i32 0, i32 0), align 4
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = call %struct.rtc_device* @devm_rtc_device_register(i32* %22, i32 %23, i32* @m41t94_rtc_ops, i32 %24)
  store %struct.rtc_device* %25, %struct.rtc_device** %4, align 8
  %26 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %27 = call i64 @IS_ERR(%struct.rtc_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %31 = call i32 @PTR_ERR(%struct.rtc_device* %30)
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %20
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %35 = call i32 @spi_set_drvdata(%struct.spi_device* %33, %struct.rtc_device* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %29, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

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
