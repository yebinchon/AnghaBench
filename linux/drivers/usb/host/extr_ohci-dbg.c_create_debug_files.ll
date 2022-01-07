; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_create_debug_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_create_debug_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.usb_bus = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_bus }

@ohci_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"async\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@debug_async_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@debug_periodic_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@debug_registers_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"created debug files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*)* @create_debug_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_debug_files(%struct.ohci_hcd* %0) #0 {
  %2 = alloca %struct.ohci_hcd*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %2, align 8
  %5 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %6 = call %struct.TYPE_2__* @ohci_to_hcd(%struct.ohci_hcd* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.usb_bus* %7, %struct.usb_bus** %3, align 8
  %8 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %9 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ohci_debug_root, align 4
  %12 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32 %11)
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %14, i32 0, i32 0
  store %struct.dentry* %13, %struct.dentry** %15, align 8
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %19 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.dentry* %17, %struct.ohci_hcd* %18, i32* @debug_async_fops)
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.dentry* %21, %struct.ohci_hcd* %22, i32* @debug_periodic_fops)
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %27 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %24, %struct.dentry* %25, %struct.ohci_hcd* %26, i32* @debug_registers_fops)
  %28 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %29 = call i32 @ohci_dbg(%struct.ohci_hcd* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_2__* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
