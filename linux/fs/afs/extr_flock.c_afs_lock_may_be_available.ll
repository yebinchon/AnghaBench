; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_lock_may_be_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_lock_may_be_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"{%llx:%llu}\00", align 1
@AFS_VNODE_LOCK_WAITING_FOR_CB = common dso_local global i64 0, align 8
@afs_flock_callback_break = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_lock_may_be_available(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %3 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %4 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10)
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %16 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AFS_VNODE_LOCK_WAITING_FOR_CB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %22 = call i32 @afs_next_locker(%struct.afs_vnode* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %25 = load i32, i32* @afs_flock_callback_break, align 4
  %26 = call i32 @trace_afs_flock_ev(%struct.afs_vnode* %24, i32* null, i32 %25, i32 0)
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @afs_next_locker(%struct.afs_vnode*, i32) #1

declare dso_local i32 @trace_afs_flock_ev(%struct.afs_vnode*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
