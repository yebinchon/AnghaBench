; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_real_fops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_real_fops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.file = type { i32 }
%struct.debugfs_fsdata = type { %struct.file_operations* }
%struct.TYPE_2__ = type { %struct.debugfs_fsdata* }

@DEBUGFS_FSDATA_IS_REAL_FOPS_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_operations* @debugfs_real_fops(%struct.file* %0) #0 {
  %2 = alloca %struct.file_operations*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.debugfs_fsdata*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = call %struct.TYPE_2__* @F_DENTRY(%struct.file* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %7, align 8
  store %struct.debugfs_fsdata* %8, %struct.debugfs_fsdata** %4, align 8
  %9 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %10 = ptrtoint %struct.debugfs_fsdata* %9 to i64
  %11 = load i64, i64* @DEBUGFS_FSDATA_IS_REAL_FOPS_BIT, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @WARN_ON(i32 1)
  store %struct.file_operations* null, %struct.file_operations** %2, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %18 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %17, i32 0, i32 0
  %19 = load %struct.file_operations*, %struct.file_operations** %18, align 8
  store %struct.file_operations* %19, %struct.file_operations** %2, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = load %struct.file_operations*, %struct.file_operations** %2, align 8
  ret %struct.file_operations* %21
}

declare dso_local %struct.TYPE_2__* @F_DENTRY(%struct.file*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
