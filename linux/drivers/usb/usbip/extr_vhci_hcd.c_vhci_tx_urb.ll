; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_tx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vhci_device = type { i32, i32, i32, i32 }
%struct.vhci_priv = type { i32, i32, %struct.urb*, %struct.vhci_device* }
%struct.vhci_hcd = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"seqnum max\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.vhci_device*)* @vhci_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_tx_urb(%struct.urb* %0, %struct.vhci_device* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.vhci_device*, align 8
  %5 = alloca %struct.vhci_priv*, align 8
  %6 = alloca %struct.vhci_hcd*, align 8
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store %struct.vhci_device* %1, %struct.vhci_device** %4, align 8
  %8 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %9 = call %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device* %8)
  store %struct.vhci_hcd* %9, %struct.vhci_hcd** %6, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.vhci_priv* @kzalloc(i32 24, i32 %10)
  store %struct.vhci_priv* %11, %struct.vhci_priv** %5, align 8
  %12 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %13 = icmp ne %struct.vhci_priv* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %16 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %15, i32 0, i32 3
  %17 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %18 = call i32 @usbip_event_add(i32* %16, i32 %17)
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %21 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.vhci_hcd*, %struct.vhci_hcd** %6, align 8
  %25 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc_return(i32* %25)
  %27 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %28 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %30 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.urb*, %struct.urb** %3, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %19
  %40 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %41 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %42 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %41, i32 0, i32 3
  store %struct.vhci_device* %40, %struct.vhci_device** %42, align 8
  %43 = load %struct.urb*, %struct.urb** %3, align 8
  %44 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %45 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %44, i32 0, i32 2
  store %struct.urb* %43, %struct.urb** %45, align 8
  %46 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %47 = bitcast %struct.vhci_priv* %46 to i8*
  %48 = load %struct.urb*, %struct.urb** %3, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.vhci_priv*, %struct.vhci_priv** %5, align 8
  %51 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %50, i32 0, i32 1
  %52 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %53 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %52, i32 0, i32 2
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %56 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %55, i32 0, i32 1
  %57 = call i32 @wake_up(i32* %56)
  %58 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %59 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %39, %14
  ret void
}

declare dso_local %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device*) #1

declare dso_local %struct.vhci_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
