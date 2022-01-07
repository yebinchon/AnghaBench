; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@USBIP_VHCI = common dso_local global i32 0, align 4
@VDEV_ST_NULL = common dso_local global i32 0, align 4
@vhci_shutdown_connection = common dso_local global i32 0, align 4
@vhci_device_reset = common dso_local global i32 0, align 4
@vhci_device_unusable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*)* @vhci_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_device_init(%struct.vhci_device* %0) #0 {
  %2 = alloca %struct.vhci_device*, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %2, align 8
  %3 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %4 = call i32 @memset(%struct.vhci_device* %3, i32 0, i32 48)
  %5 = load i32, i32* @USBIP_VHCI, align 4
  %6 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %7 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @VDEV_ST_NULL, align 4
  %10 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %11 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %14 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %18 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %17, i32 0, i32 6
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %21 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %20, i32 0, i32 5
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %24 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %27 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %30 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %33 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %32, i32 0, i32 1
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load i32, i32* @vhci_shutdown_connection, align 4
  %36 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %37 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @vhci_device_reset, align 4
  %41 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %42 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @vhci_device_unusable, align 4
  %46 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %47 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %51 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %50, i32 0, i32 0
  %52 = call i32 @usbip_start_eh(%struct.TYPE_4__* %51)
  ret void
}

declare dso_local i32 @memset(%struct.vhci_device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usbip_start_eh(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
