; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_ring_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_ring_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32 }
%struct.dentry = type { i32 }

@ring_files = common dso_local global i32 0, align 4
@xhci_ring_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.xhci_hcd*, %struct.xhci_ring**, i8*, %struct.dentry*)* @xhci_debugfs_create_ring_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @xhci_debugfs_create_ring_dir(%struct.xhci_hcd* %0, %struct.xhci_ring** %1, i8* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring** %1, %struct.xhci_ring*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %8, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* %10, %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %9, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %14 = load i32, i32* @ring_files, align 4
  %15 = load i32, i32* @ring_files, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.xhci_ring**, %struct.xhci_ring*** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = call i32 @xhci_debugfs_create_files(%struct.xhci_hcd* %13, i32 %14, i32 %16, %struct.xhci_ring** %17, %struct.dentry* %18, i32* @xhci_ring_fops)
  %20 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %20
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @xhci_debugfs_create_files(%struct.xhci_hcd*, i32, i32, %struct.xhci_ring**, %struct.dentry*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
