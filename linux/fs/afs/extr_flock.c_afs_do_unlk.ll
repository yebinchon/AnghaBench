; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_unlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_unlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"{%llx:%llu},%u\00", align 1
@afs_flock_op_unlock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = %d [%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @afs_do_unlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_unlk(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call i32 @locks_inode(%struct.file* %7)
  %9 = call %struct.afs_vnode* @AFS_FS_I(i32 %8)
  store %struct.afs_vnode* %9, %struct.afs_vnode** %5, align 8
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %20)
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %23 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %24 = load i32, i32* @afs_flock_op_unlock, align 4
  %25 = call i32 @trace_afs_flock_op(%struct.afs_vnode* %22, %struct.file_lock* %23, i32 %24)
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = call i32 @vfs_fsync(%struct.file* %26, i32 0)
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %30 = call i32 @locks_lock_file_wait(%struct.file* %28, %struct.file_lock* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @locks_inode(%struct.file*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @trace_afs_flock_op(%struct.afs_vnode*, %struct.file_lock*, i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @_leave(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
