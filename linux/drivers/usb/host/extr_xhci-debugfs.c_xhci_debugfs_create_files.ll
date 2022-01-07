; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_file_map = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_file_map*, i64, i8*, %struct.dentry*, %struct.file_operations*)* @xhci_debugfs_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_debugfs_create_files(%struct.xhci_hcd* %0, %struct.xhci_file_map* %1, i64 %2, i8* %3, %struct.dentry* %4, %struct.file_operations* %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_file_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_file_map* %1, %struct.xhci_file_map** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.dentry* %4, %struct.dentry** %11, align 8
  store %struct.file_operations* %5, %struct.file_operations** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %30, %6
  %15 = load i32, i32* %13, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.xhci_file_map*, %struct.xhci_file_map** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xhci_file_map, %struct.xhci_file_map* %20, i64 %22
  %24 = getelementptr inbounds %struct.xhci_file_map, %struct.xhci_file_map* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dentry*, %struct.dentry** %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %29 = call i32 @debugfs_create_file(i32 %25, i32 292, %struct.dentry* %26, i8* %27, %struct.file_operations* %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %14

33:                                               ; preds = %14
  ret void
}

declare dso_local i32 @debugfs_create_file(i32, i32, %struct.dentry*, i8*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
