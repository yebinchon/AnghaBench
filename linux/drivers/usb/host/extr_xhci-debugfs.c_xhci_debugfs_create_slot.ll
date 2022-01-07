; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_2__*, %struct.xhci_slot_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_slot_priv = type { i32, %struct.xhci_virt_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ep00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debugfs_create_slot(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_slot_priv*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 1
  %9 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, i64 %11
  %13 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %12, align 8
  store %struct.xhci_virt_device* %13, %struct.xhci_virt_device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xhci_slot_priv* @kzalloc(i32 24, i32 %14)
  store %struct.xhci_slot_priv* %15, %struct.xhci_slot_priv** %5, align 8
  %16 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %17 = icmp ne %struct.xhci_slot_priv* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %21 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %26 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @debugfs_create_dir(i32 %27, i32 %30)
  %32 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %33 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %35 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %36 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %35, i32 0, i32 1
  store %struct.xhci_virt_device* %34, %struct.xhci_virt_device** %36, align 8
  %37 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %38 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %39 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %38, i32 0, i32 1
  store %struct.xhci_slot_priv* %37, %struct.xhci_slot_priv** %39, align 8
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %42 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %47 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd* %40, i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %51 = load %struct.xhci_slot_priv*, %struct.xhci_slot_priv** %5, align 8
  %52 = getelementptr inbounds %struct.xhci_slot_priv, %struct.xhci_slot_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @xhci_debugfs_create_context_files(%struct.xhci_hcd* %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.xhci_slot_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd*, i32*, i8*, i32) #1

declare dso_local i32 @xhci_debugfs_create_context_files(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
