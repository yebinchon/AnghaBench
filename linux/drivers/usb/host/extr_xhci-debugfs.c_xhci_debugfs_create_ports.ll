; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_port*, i32 }
%struct.xhci_port = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"port%02d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"portsc\00", align 1
@port_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.dentry*)* @xhci_debugfs_create_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_debugfs_create_ports(%struct.xhci_hcd* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.xhci_port*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @HCS_MAX_PORTS(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %4, align 8
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  %23 = call i32 @scnprintf(i8* %20, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call %struct.dentry* @debugfs_create_dir(i8* %24, %struct.dentry* %25)
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %27, i32 0, i32 0
  %29 = load %struct.xhci_port*, %struct.xhci_port** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %29, i64 %31
  store %struct.xhci_port* %32, %struct.xhci_port** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = load %struct.xhci_port*, %struct.xhci_port** %7, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.dentry* %33, %struct.xhci_port* %34, i32* @port_fops)
  br label %15

36:                                               ; preds = %15
  ret void
}

declare dso_local i32 @HCS_MAX_PORTS(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.xhci_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
