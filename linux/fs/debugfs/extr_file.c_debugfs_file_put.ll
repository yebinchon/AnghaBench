; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_file_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_file_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.debugfs_fsdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugfs_file_put(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.debugfs_fsdata*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.debugfs_fsdata* @READ_ONCE(i32 %6)
  store %struct.debugfs_fsdata* %7, %struct.debugfs_fsdata** %3, align 8
  %8 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %3, align 8
  %9 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %8, i32 0, i32 1
  %10 = call i64 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %3, align 8
  %14 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %13, i32 0, i32 0
  %15 = call i32 @complete(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.debugfs_fsdata* @READ_ONCE(i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
