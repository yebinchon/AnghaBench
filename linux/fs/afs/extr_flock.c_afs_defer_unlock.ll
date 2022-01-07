; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_defer_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_defer_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@AFS_VNODE_LOCK_GRANTED = common dso_local global i64 0, align 8
@AFS_VNODE_LOCK_EXTENDING = common dso_local global i64 0, align 8
@AFS_VNODE_LOCK_NEED_UNLOCK = common dso_local global i32 0, align 4
@afs_flock_defer_unlock = common dso_local global i32 0, align 4
@afs_lock_manager = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_vnode*)* @afs_defer_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_defer_unlock(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %3 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %4 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 2
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AFS_VNODE_LOCK_GRANTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AFS_VNODE_LOCK_EXTENDING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17, %11
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 1
  %26 = call i32 @cancel_delayed_work(i32* %25)
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %28 = load i32, i32* @AFS_VNODE_LOCK_NEED_UNLOCK, align 4
  %29 = call i32 @afs_set_lock_state(%struct.afs_vnode* %27, i32 %28)
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %31 = load i32, i32* @afs_flock_defer_unlock, align 4
  %32 = call i32 @trace_afs_flock_ev(%struct.afs_vnode* %30, i32* null, i32 %31, i32 0)
  %33 = load i32, i32* @afs_lock_manager, align 4
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 1
  %36 = call i32 @queue_delayed_work(i32 %33, i32* %35, i32 0)
  br label %37

37:                                               ; preds = %23, %17, %1
  ret void
}

declare dso_local i32 @_enter(i8*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @afs_set_lock_state(%struct.afs_vnode*, i32) #1

declare dso_local i32 @trace_afs_flock_ev(%struct.afs_vnode*, i32*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
