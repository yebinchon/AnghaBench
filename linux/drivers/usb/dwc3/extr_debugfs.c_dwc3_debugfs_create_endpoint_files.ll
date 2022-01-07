; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_debugfs_create_endpoint_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_debugfs_create_endpoint_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.file_operations* }
%struct.file_operations = type { i32 }
%struct.dwc3_ep = type { i32 }
%struct.dentry = type { i32 }

@dwc3_ep_file_map = common dso_local global %struct.TYPE_3__* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_ep*, %struct.dentry*)* @dwc3_debugfs_create_endpoint_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_debugfs_create_endpoint_files(%struct.dwc3_ep* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca i8*, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dwc3_ep_file_map, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dwc3_ep_file_map, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.file_operations*, %struct.file_operations** %18, align 8
  store %struct.file_operations* %19, %struct.file_operations** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dwc3_ep_file_map, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %30 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %31 = call i32 @debugfs_create_file(i8* %26, i32 %27, %struct.dentry* %28, %struct.dwc3_ep* %29, %struct.file_operations* %30)
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.dwc3_ep*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
