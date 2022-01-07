; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_remove_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_remove_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.xhci_slot_priv* }
%struct.xhci_slot_priv = type { %struct.xhci_slot_priv**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debugfs_remove_slot(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_slot_priv*, align 8
  %7 = alloca %struct.xhci_virt_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, i64 %12
  %14 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %13, align 8
  store %struct.xhci_virt_device* %14, %struct.xhci_virt_device** %7, align 8
  %15 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %16 = icmp ne %struct.xhci_virt_device* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %19 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %18, i32 0, i32 0
  %20 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %19, align 8
  %21 = icmp ne %struct.xhci_slot_priv* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %51

23:                                               ; preds = %17
  %24 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %25 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %24, i32 0, i32 0
  %26 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %25, align 8
  store %struct.xhci_slot_priv* %26, %struct.xhci_slot_priv** %6, align 8
  %27 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %6, align 8
  %28 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @debugfs_remove_recursive(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %43, %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 31
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %6, align 8
  %36 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %35, i32 0, i32 0
  %37 = load %struct.xhci_slot_priv**, %struct.xhci_slot_priv*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %37, i64 %39
  %41 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %40, align 8
  %42 = call i32 @kfree(%struct.xhci_slot_priv* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %6, align 8
  %48 = call i32 @kfree(%struct.xhci_slot_priv* %47)
  %49 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %50 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %49, i32 0, i32 0
  store %struct.xhci_slot_priv* null, %struct.xhci_slot_priv** %50, align 8
  br label %51

51:                                               ; preds = %46, %22
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.xhci_slot_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
