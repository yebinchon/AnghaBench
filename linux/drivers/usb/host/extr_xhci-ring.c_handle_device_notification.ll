; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_handle_device_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_handle_device_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, i64 }
%union.xhci_trb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"Device Notification event for unused slot %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Device Wake Notification event for slot ID %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %union.xhci_trb*)* @handle_device_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_device_notification(%struct.xhci_hcd* %0, %union.xhci_trb* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %union.xhci_trb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %4, align 8
  %7 = load %union.xhci_trb*, %union.xhci_trb** %4, align 8
  %8 = bitcast %union.xhci_trb* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = call i64 @TRB_TO_SLOT_ID(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @xhci_warn(%struct.xhci_hcd* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %53

26:                                               ; preds = %2
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @xhci_dbg(%struct.xhci_hcd* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.usb_device*, %struct.usb_device** %36, align 8
  store %struct.usb_device* %37, %struct.usb_device** %6, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = icmp ne %struct.usb_device* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_wakeup_notification(i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %22, %45, %40, %26
  ret void
}

declare dso_local i64 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i64) #1

declare dso_local i32 @usb_wakeup_notification(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
