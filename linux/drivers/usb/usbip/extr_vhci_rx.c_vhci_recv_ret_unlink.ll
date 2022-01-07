; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_recv_ret_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_recv_ret_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vhci_hcd = type { %struct.vhci* }
%struct.vhci = type { i32 }
%struct.vhci_unlink = type { i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"cannot find the pending unlink %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"the urb (seqnum %d) was already given back\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"now giveback urb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"urb->status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*, %struct.usbip_header*)* @vhci_recv_ret_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_recv_ret_unlink(%struct.vhci_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca %struct.vhci_hcd*, align 8
  %6 = alloca %struct.vhci*, align 8
  %7 = alloca %struct.vhci_unlink*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i64, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %4, align 8
  %10 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %11 = call %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device* %10)
  store %struct.vhci_hcd* %11, %struct.vhci_hcd** %5, align 8
  %12 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %12, i32 0, i32 0
  %14 = load %struct.vhci*, %struct.vhci** %13, align 8
  store %struct.vhci* %14, %struct.vhci** %6, align 8
  %15 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %16 = call i32 @usbip_dump_header(%struct.usbip_header* %15)
  %17 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %18 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %19 = call %struct.vhci_unlink* @dequeue_pending_unlink(%struct.vhci_device* %17, %struct.usbip_header* %18)
  store %struct.vhci_unlink* %19, %struct.vhci_unlink** %7, align 8
  %20 = load %struct.vhci_unlink*, %struct.vhci_unlink** %7, align 8
  %21 = icmp ne %struct.vhci_unlink* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %24 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %89

28:                                               ; preds = %2
  %29 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %30 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %34 = load %struct.vhci_unlink*, %struct.vhci_unlink** %7, align 8
  %35 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device* %33, i32 %36)
  store %struct.urb* %37, %struct.urb** %8, align 8
  %38 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %39 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = icmp ne %struct.urb* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %28
  %45 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %46 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %86

50:                                               ; preds = %28
  %51 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %52 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %57 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.urb*, %struct.urb** %8, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.urb*, %struct.urb** %8, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.vhci*, %struct.vhci** %6, align 8
  %68 = getelementptr inbounds %struct.vhci, %struct.vhci* %67, i32 0, i32 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %72 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %71)
  %73 = load %struct.urb*, %struct.urb** %8, align 8
  %74 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %72, %struct.urb* %73)
  %75 = load %struct.vhci*, %struct.vhci** %6, align 8
  %76 = getelementptr inbounds %struct.vhci, %struct.vhci* %75, i32 0, i32 0
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %80 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %79)
  %81 = load %struct.urb*, %struct.urb** %8, align 8
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @usb_hcd_giveback_urb(i32 %80, %struct.urb* %81, i32 %84)
  br label %86

86:                                               ; preds = %50, %44
  %87 = load %struct.vhci_unlink*, %struct.vhci_unlink** %7, align 8
  %88 = call i32 @kfree(%struct.vhci_unlink* %87)
  br label %89

89:                                               ; preds = %86, %22
  ret void
}

declare dso_local %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device*) #1

declare dso_local i32 @usbip_dump_header(%struct.usbip_header*) #1

declare dso_local %struct.vhci_unlink* @dequeue_pending_unlink(%struct.vhci_device*, %struct.usbip_header*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbip_dbg_vhci_rx(i8*, i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @vhci_hcd_to_hcd(%struct.vhci_hcd*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.vhci_unlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
