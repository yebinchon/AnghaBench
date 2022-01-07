; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_context_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_context_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.dentry = type { i32 }

@context_files = common dso_local global i32 0, align 4
@xhci_context_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.dentry*, i32)* @xhci_debugfs_create_context_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_debugfs_create_context_files(%struct.xhci_hcd* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_virt_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, i64 %12
  %14 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %13, align 8
  store %struct.xhci_virt_device* %14, %struct.xhci_virt_device** %7, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = load i32, i32* @context_files, align 4
  %17 = load i32, i32* @context_files, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %20 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @xhci_debugfs_create_files(%struct.xhci_hcd* %15, i32 %16, i32 %18, i32 %21, %struct.dentry* %22, i32* @xhci_context_fops)
  ret void
}

declare dso_local i32 @xhci_debugfs_create_files(%struct.xhci_hcd*, i32, i32, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
