; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_usb3_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_usb3_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { %struct.xhci_hub }
%struct.xhci_hub = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hub_descriptor = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64 }

@USB_DT_SS_HUB = common dso_local global i32 0, align 4
@USB_DT_SS_HUB_SIZE = common dso_local global i32 0, align 4
@PORT_DEV_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*)* @xhci_usb3_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_usb3_hub_descriptor(%struct.usb_hcd* %0, %struct.xhci_hcd* %1, %struct.usb_hub_descriptor* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hub_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xhci_hub*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %5, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %6, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  store %struct.xhci_hub* %13, %struct.xhci_hub** %11, align 8
  %14 = load %struct.xhci_hub*, %struct.xhci_hub** %11, align 8
  %15 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %18 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @xhci_common_hub_descriptor(%struct.xhci_hcd* %17, %struct.usb_hub_descriptor* %18, i32 %19)
  %21 = load i32, i32* @USB_DT_SS_HUB, align 4
  %22 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %23 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @USB_DT_SS_HUB_SIZE, align 4
  %25 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %26 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %28 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %32 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %61, %3
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.xhci_hub*, %struct.xhci_hub** %11, align 8
  %41 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @readl(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PORT_DEV_REMOVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  %57 = shl i32 1, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %68 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  ret void
}

declare dso_local i32 @xhci_common_hub_descriptor(%struct.xhci_hcd*, %struct.usb_hub_descriptor*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
