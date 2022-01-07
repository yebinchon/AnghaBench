; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb4604 = type { i32, %struct.gpio_desc*, %struct.device* }
%struct.gpio_desc = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@USB4604_MODE_HUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"initial-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb4604*)* @usb4604_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb4604_probe(%struct.usb4604* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb4604*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb4604* %0, %struct.usb4604** %3, align 8
  %8 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %9 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load i32, i32* @USB4604_MODE_HUB, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %17 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.gpio_desc* %17, %struct.gpio_desc** %6, align 8
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %19 = call i64 @IS_ERR(%struct.gpio_desc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.gpio_desc* %22)
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %26 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %27 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %26, i32 0, i32 1
  store %struct.gpio_desc* %25, %struct.gpio_desc** %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %30 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %29, i32 0, i32 0
  %31 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %36 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %39 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %40 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb4604_switch_mode(%struct.usb4604* %38, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @usb4604_switch_mode(%struct.usb4604*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
