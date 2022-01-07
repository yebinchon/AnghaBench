; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_configure_iio_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_configure_iio_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.axp20x_usb_power = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"vbus_v\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vbus_i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.axp20x_usb_power*)* @configure_iio_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_iio_channels(%struct.platform_device* %0, %struct.axp20x_usb_power* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.axp20x_usb_power*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.axp20x_usb_power* %1, %struct.axp20x_usb_power** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i8* @devm_iio_channel_get(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %10 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %12 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %18 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %16
  %28 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %29 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i8* @devm_iio_channel_get(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %37 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %39 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %45 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %5, align 8
  %56 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %51, %27, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @devm_iio_channel_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
