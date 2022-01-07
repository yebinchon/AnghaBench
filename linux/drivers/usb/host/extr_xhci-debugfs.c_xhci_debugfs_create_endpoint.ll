; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { %struct.TYPE_2__*, %struct.xhci_slot_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_slot_priv = type { %struct.xhci_ep_priv**, i32 }
%struct.xhci_ep_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debugfs_create_endpoint(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_ep_priv*, align 8
  %8 = alloca %struct.xhci_slot_priv*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %9, i32 0, i32 1
  %11 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %10, align 8
  store %struct.xhci_slot_priv* %11, %struct.xhci_slot_priv** %8, align 8
  %12 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %13 = icmp ne %struct.xhci_slot_priv* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %61

15:                                               ; preds = %3
  %16 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %17 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %16, i32 0, i32 0
  %18 = load %struct.xhci_ep_priv**, %struct.xhci_ep_priv*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %18, i64 %20
  %22 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %21, align 8
  %23 = icmp ne %struct.xhci_ep_priv* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %61

25:                                               ; preds = %15
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.xhci_ep_priv* @kzalloc(i32 8, i32 %26)
  store %struct.xhci_ep_priv* %27, %struct.xhci_ep_priv** %7, align 8
  %28 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %29 = icmp ne %struct.xhci_ep_priv* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %61

31:                                               ; preds = %25
  %32 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %33 = getelementptr inbounds %struct.xhci_ep_priv, %struct.xhci_ep_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %38 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %46 = getelementptr inbounds %struct.xhci_ep_priv, %struct.xhci_ep_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %49 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd* %37, i32* %44, i32 %47, i32 %50)
  %52 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %53 = getelementptr inbounds %struct.xhci_ep_priv, %struct.xhci_ep_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %7, align 8
  %55 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %8, align 8
  %56 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %55, i32 0, i32 0
  %57 = load %struct.xhci_ep_priv**, %struct.xhci_ep_priv*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.xhci_ep_priv*, %struct.xhci_ep_priv** %57, i64 %59
  store %struct.xhci_ep_priv* %54, %struct.xhci_ep_priv** %60, align 8
  br label %61

61:                                               ; preds = %31, %30, %24, %14
  ret void
}

declare dso_local %struct.xhci_ep_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
