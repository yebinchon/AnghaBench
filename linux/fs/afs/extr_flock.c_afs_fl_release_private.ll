; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_fl_release_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_fl_release_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.afs_vnode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_flock_op_release_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"state %u for %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*)* @afs_fl_release_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_fl_release_private(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca %struct.afs_vnode*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %4 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @locks_inode(i32 %6)
  %8 = call %struct.afs_vnode* @AFS_FS_I(i32 %7)
  store %struct.afs_vnode* %8, %struct.afs_vnode** %3, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %15 = load i32, i32* @afs_flock_op_release_lock, align 4
  %16 = call i32 @trace_afs_flock_op(%struct.afs_vnode* %13, %struct.file_lock* %14, i32 %15)
  %17 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 2
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %28 = call i32 @afs_defer_unlock(%struct.afs_vnode* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %34 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32, %struct.afs_vnode* %33)
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %36 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @locks_inode(i32) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_afs_flock_op(%struct.afs_vnode*, %struct.file_lock*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @afs_defer_unlock(%struct.afs_vnode*) #1

declare dso_local i32 @_debug(i8*, i32, %struct.afs_vnode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
