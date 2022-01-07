; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.esb_dev = type { %struct.pci_dev*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@esb_info = common dso_local global i32 0, align 4
@esb_ops = common dso_local global i32 0, align 4
@ESB_HEARTBEAT_MIN = common dso_local global i32 0, align 4
@ESB_HEARTBEAT_MAX = common dso_local global i32 0, align 4
@ESB_HEARTBEAT_DEFAULT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"initialized. heartbeat=%d sec (nowayout=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @esb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.esb_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.esb_dev* @devm_kzalloc(i32* %9, i32 48, i32 %10)
  store %struct.esb_dev* %11, %struct.esb_dev** %6, align 8
  %12 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %13 = icmp ne %struct.esb_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %20 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %19, i32 0, i32 0
  store %struct.pci_dev* %18, %struct.pci_dev** %20, align 8
  %21 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %22 = call i32 @esb_getdevice(%struct.esb_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %91

27:                                               ; preds = %17
  %28 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %29 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32* @esb_info, i32** %30, align 8
  %31 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %32 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32* @esb_ops, i32** %33, align 8
  %34 = load i32, i32* @ESB_HEARTBEAT_MIN, align 4
  %35 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %36 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @ESB_HEARTBEAT_MAX, align 4
  %39 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %40 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @ESB_HEARTBEAT_DEFAULT, align 4
  %43 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %44 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %47 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %46, i32 0, i32 2
  %48 = load i32, i32* @heartbeat, align 4
  %49 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* %47, i32 %48, i32* null)
  %50 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %51 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %50, i32 0, i32 2
  %52 = load i32, i32* @nowayout, align 4
  %53 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* %51, i32 %52)
  %54 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %55 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %54, i32 0, i32 2
  %56 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_6__* %55)
  %57 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %58 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %57, i32 0, i32 2
  %59 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_6__* %58)
  %60 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %61 = call i32 @esb_initdevice(%struct.esb_dev* %60)
  %62 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %63 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %62, i32 0, i32 2
  %64 = call i32 @watchdog_register_device(%struct.TYPE_6__* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %27
  br label %77

68:                                               ; preds = %27
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %72 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @nowayout, align 4
  %76 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %91

77:                                               ; preds = %67
  %78 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %79 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @iounmap(i32 %80)
  %82 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %83 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %82, i32 0, i32 0
  %84 = load %struct.pci_dev*, %struct.pci_dev** %83, align 8
  %85 = call i32 @pci_release_region(%struct.pci_dev* %84, i32 0)
  %86 = load %struct.esb_dev*, %struct.esb_dev** %6, align 8
  %87 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %86, i32 0, i32 0
  %88 = load %struct.pci_dev*, %struct.pci_dev** %87, align 8
  %89 = call i32 @pci_disable_device(%struct.pci_dev* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %77, %68, %24, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.esb_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @esb_getdevice(%struct.esb_dev*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_6__*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @esb_initdevice(%struct.esb_dev*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
