; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_vhci_port_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_vhci_port_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_hcd = type { %struct.vhci*, %struct.vhci_device* }
%struct.vhci = type { i32 }
%struct.vhci_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@VDEV_ST_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"not connected %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VDEV_EVENT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhci_hcd*, i64)* @vhci_port_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_port_disconnect(%struct.vhci_hcd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vhci_device*, align 8
  %7 = alloca %struct.vhci*, align 8
  %8 = alloca i64, align 8
  store %struct.vhci_hcd* %0, %struct.vhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %9, i32 0, i32 1
  %11 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %11, i64 %12
  store %struct.vhci_device* %13, %struct.vhci_device** %6, align 8
  %14 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.vhci*, %struct.vhci** %15, align 8
  store %struct.vhci* %16, %struct.vhci** %7, align 8
  %17 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vhci*, %struct.vhci** %7, align 8
  %19 = getelementptr inbounds %struct.vhci, %struct.vhci* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %23 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %27 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VDEV_ST_NULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %34 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %39 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.vhci*, %struct.vhci** %7, align 8
  %43 = getelementptr inbounds %struct.vhci, %struct.vhci* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %2
  %49 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %50 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.vhci*, %struct.vhci** %7, align 8
  %54 = getelementptr inbounds %struct.vhci, %struct.vhci* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %58 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %57, i32 0, i32 0
  %59 = load i32, i32* @VDEV_EVENT_DOWN, align 4
  %60 = call i32 @usbip_event_add(%struct.TYPE_2__* %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %48, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
