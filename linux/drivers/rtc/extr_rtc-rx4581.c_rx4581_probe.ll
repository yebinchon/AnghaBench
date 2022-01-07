; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx4581.c_rx4581_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx4581.c_rx4581_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.rtc_device = type { i32 }

@RX4581_REG_SC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rx4581\00", align 1
@rx4581_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @rx4581_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx4581_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @RX4581_REG_SC, align 4
  %10 = call i32 @rx4581_get_reg(i32* %8, i32 %9, i8* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = call %struct.rtc_device* @devm_rtc_device_register(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @rx4581_rtc_ops, i32 %18)
  store %struct.rtc_device* %19, %struct.rtc_device** %4, align 8
  %20 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %21 = call i64 @IS_ERR(%struct.rtc_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.rtc_device* %24)
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.rtc_device* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %23, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rx4581_get_reg(i32*, i32, i8*) #1

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
