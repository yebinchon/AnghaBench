; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_disable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_slot_ctx = type { i32 }

@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32)* @xhci_handle_cmd_disable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_disable_slot(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca %struct.xhci_slot_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 1
  %9 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, i64 %11
  %13 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %12, align 8
  store %struct.xhci_virt_device* %13, %struct.xhci_virt_device** %5, align 8
  %14 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %15 = icmp ne %struct.xhci_virt_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %19 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %20 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %18, i32 %21)
  store %struct.xhci_slot_ctx* %22, %struct.xhci_slot_ctx** %6, align 8
  %23 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %6, align 8
  %24 = call i32 @trace_xhci_handle_cmd_disable_slot(%struct.xhci_slot_ctx* %23)
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %34 = call i32 @xhci_free_device_endpoint_resources(%struct.xhci_hcd* %32, %struct.xhci_virt_device* %33, i32 1)
  br label %35

35:                                               ; preds = %31, %17
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @xhci_free_virt_device(%struct.xhci_hcd* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @trace_xhci_handle_cmd_disable_slot(%struct.xhci_slot_ctx*) #1

declare dso_local i32 @xhci_free_device_endpoint_resources(%struct.xhci_hcd*, %struct.xhci_virt_device*, i32) #1

declare dso_local i32 @xhci_free_virt_device(%struct.xhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
