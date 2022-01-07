; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_context_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_context_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_file_map = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i8* }

@context_files = common dso_local global %struct.xhci_file_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @xhci_context_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_context_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_file_map*, align 8
  %7 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.TYPE_2__* @file_dentry(%struct.file* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.xhci_file_map*, %struct.xhci_file_map** @context_files, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.xhci_file_map* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.xhci_file_map*, %struct.xhci_file_map** @context_files, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xhci_file_map, %struct.xhci_file_map* %18, i64 %20
  store %struct.xhci_file_map* %21, %struct.xhci_file_map** %6, align 8
  %22 = load %struct.xhci_file_map*, %struct.xhci_file_map** %6, align 8
  %23 = getelementptr inbounds %struct.xhci_file_map, %struct.xhci_file_map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %12

33:                                               ; preds = %28, %12
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.xhci_file_map*, %struct.xhci_file_map** %6, align 8
  %36 = getelementptr inbounds %struct.xhci_file_map, %struct.xhci_file_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @single_open(%struct.file* %34, i32 %37, i32 %40)
  ret i32 %41
}

declare dso_local %struct.TYPE_2__* @file_dentry(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.xhci_file_map*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @single_open(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
