; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_reset_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_reset_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_event_cmd = type { i32 }
%struct.xhci_slot_ctx = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Completed reset device command.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Reset device command completion for disabled slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, %struct.xhci_event_cmd*)* @xhci_handle_cmd_reset_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_reset_dev(%struct.xhci_hcd* %0, i32 %1, %struct.xhci_event_cmd* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_event_cmd*, align 8
  %7 = alloca %struct.xhci_virt_device*, align 8
  %8 = alloca %struct.xhci_slot_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xhci_event_cmd* %2, %struct.xhci_event_cmd** %6, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 0
  %11 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %11, i64 %13
  %15 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %14, align 8
  store %struct.xhci_virt_device* %15, %struct.xhci_virt_device** %7, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %16, i32 %19)
  store %struct.xhci_slot_ctx* %20, %struct.xhci_slot_ctx** %8, align 8
  %21 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %22 = call i32 @trace_xhci_handle_cmd_reset_dev(%struct.xhci_slot_ctx* %21)
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %24 = call i32 @xhci_dbg(%struct.xhci_hcd* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 0
  %27 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %27, i64 %29
  %31 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %30, align 8
  %32 = icmp ne %struct.xhci_virt_device* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @xhci_warn(%struct.xhci_hcd* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %3
  ret void
}

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @trace_xhci_handle_cmd_reset_dev(%struct.xhci_slot_ctx*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
