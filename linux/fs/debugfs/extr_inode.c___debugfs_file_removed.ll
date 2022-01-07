; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_file_removed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_file_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.debugfs_fsdata = type { i32, i32 }

@DEBUGFS_FSDATA_IS_REAL_FOPS_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @__debugfs_file_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__debugfs_file_removed(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.debugfs_fsdata*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = call i32 (...) @smp_mb()
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.debugfs_fsdata* @READ_ONCE(i32 %7)
  store %struct.debugfs_fsdata* %8, %struct.debugfs_fsdata** %3, align 8
  %9 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %3, align 8
  %10 = ptrtoint %struct.debugfs_fsdata* %9 to i64
  %11 = load i64, i64* @DEBUGFS_FSDATA_IS_REAL_FOPS_BIT, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %3, align 8
  %17 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %16, i32 0, i32 1
  %18 = call i32 @refcount_dec_and_test(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %3, align 8
  %22 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %21, i32 0, i32 0
  %23 = call i32 @wait_for_completion(i32* %22)
  br label %24

24:                                               ; preds = %14, %20, %15
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.debugfs_fsdata* @READ_ONCE(i32) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
