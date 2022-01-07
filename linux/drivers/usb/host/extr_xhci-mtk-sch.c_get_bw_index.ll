; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_get_bw_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_get_bw_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__, %struct.xhci_virt_device** }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_virt_device = type { i32 }
%struct.usb_device = type { i64, i64 }
%struct.usb_host_endpoint = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)* @get_bw_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bw_index(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca %struct.xhci_virt_device*, align 8
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %6, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 1
  %11 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %10, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %11, i64 %14
  %16 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  store %struct.xhci_virt_device* %16, %struct.xhci_virt_device** %7, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_SPEED_SUPER, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i32 0, i32 0
  %25 = call i64 @usb_endpoint_dir_out(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %29 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %35 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %33, %27
  br label %51

41:                                               ; preds = %3
  %42 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %43 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %44, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %41, %40
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i64 @usb_endpoint_dir_out(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
