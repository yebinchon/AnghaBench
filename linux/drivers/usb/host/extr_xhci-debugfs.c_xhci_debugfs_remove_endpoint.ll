; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_remove_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_remove_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { %struct.xhci_slot_priv* }
%struct.xhci_slot_priv = type { %struct.xhci_ep_priv** }
%struct.xhci_ep_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debugfs_remove_endpoint(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_ep_priv*, align 8
  %8 = alloca %struct.xhci_slot_priv*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %9, i32 0, i32 0
  %11 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %10, align 8
  store %struct.xhci_slot_priv* %11, %struct.xhci_slot_priv** %8, align 8
  %12 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %13 = icmp ne %struct.xhci_slot_priv* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %16 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %15, i32 0, i32 0
  %17 = load %struct.xhci_ep_priv**, %struct.xhci_ep_priv*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %17, i64 %19
  %21 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %20, align 8
  %22 = icmp ne %struct.xhci_ep_priv* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14, %3
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %26 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %25, i32 0, i32 0
  %27 = load %struct.xhci_ep_priv**, %struct.xhci_ep_priv*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %27, i64 %29
  %31 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %30, align 8
  store %struct.xhci_ep_priv* %31, %struct.xhci_ep_priv** %7, align 8
  %32 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %33 = getelementptr inbounds %struct.xhci_ep_priv, %struct.xhci_ep_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @debugfs_remove_recursive(i32 %34)
  %36 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %37 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %36, i32 0, i32 0
  %38 = load %struct.xhci_ep_priv**, %struct.xhci_ep_priv*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %38, i64 %40
  store %struct.xhci_ep_priv* null, %struct.xhci_ep_priv** %41, align 8
  %42 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %43 = call i32 @kfree(%struct.xhci_ep_priv* %42)
  br label %44

44:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.xhci_ep_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
