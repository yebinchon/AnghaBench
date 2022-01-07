; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_gpio_vbus_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_gpio_vbus_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_vbus_mach_info = type { i32 }
%struct.gpio_vbus_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.usb_otg* }
%struct.usb_otg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"VBUS %s (gadget: %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"supplied\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_vbus_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_vbus_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.gpio_vbus_mach_info*, align 8
  %7 = alloca %struct.gpio_vbus_data*, align 8
  %8 = alloca %struct.usb_otg*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.platform_device*
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.gpio_vbus_mach_info* @dev_get_platdata(i32* %12)
  store %struct.gpio_vbus_mach_info* %13, %struct.gpio_vbus_mach_info** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = call %struct.gpio_vbus_data* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.gpio_vbus_data* %15, %struct.gpio_vbus_data** %7, align 8
  %16 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %7, align 8
  %17 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.usb_otg*, %struct.usb_otg** %18, align 8
  store %struct.usb_otg* %19, %struct.usb_otg** %8, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %6, align 8
  %23 = call i64 @is_vbus_powered(%struct.gpio_vbus_mach_info* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %28 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %33 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i8* [ %36, %31 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %37 ]
  %40 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %39)
  %41 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %42 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %7, align 8
  %47 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %46, i32 0, i32 0
  %48 = call i32 @msecs_to_jiffies(i32 100)
  %49 = call i32 @schedule_delayed_work(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local %struct.gpio_vbus_mach_info* @dev_get_platdata(i32*) #1

declare dso_local %struct.gpio_vbus_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @is_vbus_powered(%struct.gpio_vbus_mach_info*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
