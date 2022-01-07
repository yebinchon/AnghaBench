; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_recv_ret_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_recv_ret_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { i32, %struct.usbip_device }
%struct.usbip_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vhci_hcd = type { i32, %struct.vhci* }
%struct.vhci = type { i32 }
%struct.urb = type { i32, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"cannot find a urb of seqnum %u max seqnum %d\0A\00", align 1
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@USBIP_RET_SUBMIT = common dso_local global i32 0, align 4
@usbip_dbg_flag_vhci_rx = common dso_local global i64 0, align 8
@URB_DMA_MAP_SG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"now giveback urb %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*, %struct.usbip_header*)* @vhci_recv_ret_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_recv_ret_submit(%struct.vhci_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca %struct.vhci_hcd*, align 8
  %6 = alloca %struct.vhci*, align 8
  %7 = alloca %struct.usbip_device*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i64, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %4, align 8
  %10 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %11 = call %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device* %10)
  store %struct.vhci_hcd* %11, %struct.vhci_hcd** %5, align 8
  %12 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %12, i32 0, i32 1
  %14 = load %struct.vhci*, %struct.vhci** %13, align 8
  store %struct.vhci* %14, %struct.vhci** %6, align 8
  %15 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %16 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %15, i32 0, i32 1
  store %struct.usbip_device* %16, %struct.usbip_device** %7, align 8
  %17 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %18 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %22 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %23 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device* %21, i32 %25)
  store %struct.urb* %26, %struct.urb** %8, align 8
  %27 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %28 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.urb*, %struct.urb** %8, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %2
  %34 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %35 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %39 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %43 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %44 = call i32 @usbip_event_add(%struct.usbip_device* %42, i32 %43)
  br label %108

45:                                               ; preds = %2
  %46 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %47 = load %struct.urb*, %struct.urb** %8, align 8
  %48 = load i32, i32* @USBIP_RET_SUBMIT, align 4
  %49 = call i32 @usbip_pack_pdu(%struct.usbip_header* %46, %struct.urb* %47, i32 %48, i32 0)
  %50 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %51 = load %struct.urb*, %struct.urb** %8, align 8
  %52 = call i64 @usbip_recv_xbuff(%struct.usbip_device* %50, %struct.urb* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %108

55:                                               ; preds = %45
  %56 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = call i64 @usbip_recv_iso(%struct.usbip_device* %56, %struct.urb* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %108

61:                                               ; preds = %55
  %62 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %63 = load %struct.urb*, %struct.urb** %8, align 8
  %64 = call i32 @usbip_pad_iso(%struct.usbip_device* %62, %struct.urb* %63)
  %65 = load i64, i64* @usbip_dbg_flag_vhci_rx, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = call i32 @usbip_dump_urb(%struct.urb* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.urb*, %struct.urb** %8, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @URB_DMA_MAP_SG, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.urb*, %struct.urb** %8, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %84 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.vhci*, %struct.vhci** %6, align 8
  %89 = getelementptr inbounds %struct.vhci, %struct.vhci* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %93 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %92)
  %94 = load %struct.urb*, %struct.urb** %8, align 8
  %95 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %93, %struct.urb* %94)
  %96 = load %struct.vhci*, %struct.vhci** %6, align 8
  %97 = getelementptr inbounds %struct.vhci, %struct.vhci* %96, i32 0, i32 0
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %101 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %100)
  %102 = load %struct.urb*, %struct.urb** %8, align 8
  %103 = load %struct.urb*, %struct.urb** %8, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @usb_hcd_giveback_urb(i32 %101, %struct.urb* %102, i32 %105)
  %107 = call i32 (i8*, ...) @usbip_dbg_vhci_rx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %82, %60, %54, %33
  ret void
}

declare dso_local %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.urb* @pickup_urb_and_free_priv(%struct.vhci_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.urb*, i32, i32) #1

declare dso_local i64 @usbip_recv_xbuff(%struct.usbip_device*, %struct.urb*) #1

declare dso_local i64 @usbip_recv_iso(%struct.usbip_device*, %struct.urb*) #1

declare dso_local i32 @usbip_pad_iso(%struct.usbip_device*, %struct.urb*) #1

declare dso_local i32 @usbip_dump_urb(%struct.urb*) #1

declare dso_local i32 @usbip_dbg_vhci_rx(i8*, ...) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @vhci_hcd_to_hcd(%struct.vhci_hcd*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
