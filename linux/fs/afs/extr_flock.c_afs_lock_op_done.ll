; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_lock_op_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_lock_op_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32, i32 }

@afs_flock_timestamp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_lock_op_done(%struct.afs_call* %0) #0 {
  %2 = alloca %struct.afs_call*, align 8
  %3 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %2, align 8
  %4 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %5 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %4, i32 0, i32 2
  %6 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  store %struct.afs_vnode* %6, %struct.afs_vnode** %3, align 8
  %7 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %8 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %16 = load i32, i32* @afs_flock_timestamp, align 4
  %17 = call i32 @trace_afs_flock_ev(%struct.afs_vnode* %15, i32* null, i32 %16, i32 0)
  %18 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %24 = call i32 @afs_schedule_lock_extension(%struct.afs_vnode* %23)
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_afs_flock_ev(%struct.afs_vnode*, i32*, i32, i32) #1

declare dso_local i32 @afs_schedule_lock_extension(%struct.afs_vnode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
