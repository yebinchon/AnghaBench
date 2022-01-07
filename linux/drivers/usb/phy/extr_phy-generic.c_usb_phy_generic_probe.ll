; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_phy_generic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_phy_generic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_phy_generic = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nop_gpio_vbus_thread = common dso_local global i32 0, align 4
@VBUS_IRQ_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vbus_detect\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"can't request irq %i, err: %d\0A\00", align 1
@OTG_STATE_B_PERIPHERAL = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@usb_gen_phy_init = common dso_local global i32 0, align 4
@usb_gen_phy_shutdown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"can't register transceiver, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb_phy_generic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_phy_generic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_phy_generic*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.usb_phy_generic* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.usb_phy_generic* %11, %struct.usb_phy_generic** %5, align 8
  %12 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %13 = icmp ne %struct.usb_phy_generic* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_get_platdata(%struct.device* %21)
  %23 = call i32 @usb_phy_gen_create_phy(%struct.device* %18, %struct.usb_phy_generic* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %97

28:                                               ; preds = %17
  %29 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %30 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %37 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpiod_to_irq(i64 %38)
  %40 = load i32, i32* @nop_gpio_vbus_thread, align 4
  %41 = load i32, i32* @VBUS_IRQ_FLAGS, align 4
  %42 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %43 = call i32 @devm_request_threaded_irq(%struct.device* %35, i32 %39, i32* null, i32 %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.usb_phy_generic* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %50 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gpiod_to_irq(i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %97

56:                                               ; preds = %33
  %57 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %58 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @gpiod_get_value(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @OTG_STATE_B_PERIPHERAL, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %69 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %28
  %74 = load i32, i32* @usb_gen_phy_init, align 4
  %75 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %76 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @usb_gen_phy_shutdown, align 4
  %79 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %80 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %83 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %82, i32 0, i32 0
  %84 = call i32 @usb_add_phy_dev(%struct.TYPE_4__* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %73
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %73
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %5, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.usb_phy_generic* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %87, %46, %26, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.usb_phy_generic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @usb_phy_gen_create_phy(%struct.device*, %struct.usb_phy_generic*, i32) #1

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.usb_phy_generic*) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i64 @gpiod_get_value(i64) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_phy_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
