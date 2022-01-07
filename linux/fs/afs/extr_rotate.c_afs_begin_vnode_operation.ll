; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_begin_vnode_operation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_begin_vnode_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, %struct.TYPE_2__, %struct.key*, %struct.afs_vnode* }
%struct.TYPE_2__ = type { i32 }
%struct.afs_vnode = type { i64, i32 }
%struct.key = type { i32 }

@SHRT_MAX = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@AFS_FS_CURSOR_INTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@AFS_FS_CURSOR_STOP = common dso_local global i32 0, align 4
@AFS_VNODE_LOCK_NONE = common dso_local global i64 0, align 8
@AFS_FS_CURSOR_CUR_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, %struct.key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_fs_cursor*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %6, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %11 = call i32 @memset(%struct.afs_fs_cursor* %10, i32 0, i32 32)
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %13 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %14 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %13, i32 0, i32 4
  store %struct.afs_vnode* %12, %struct.afs_vnode** %14, align 8
  %15 = load %struct.key*, %struct.key** %8, align 8
  %16 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %17 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 3
  store %struct.key* %15, %struct.key** %17, align 8
  %18 = load i32, i32* @SHRT_MAX, align 4
  %19 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %20 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @EDESTADDRREQ, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %25 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %4
  %29 = load i32, i32* @AFS_FS_CURSOR_INTR, align 4
  %30 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %31 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 1
  %36 = call i64 @mutex_lock_interruptible(i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %42 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AFS_FS_CURSOR_STOP, align 4
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %5, align 4
  br label %66

48:                                               ; preds = %28
  br label %53

49:                                               ; preds = %4
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %51 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %55 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AFS_VNODE_LOCK_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @AFS_FS_CURSOR_CUR_ONLY, align 4
  %61 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %62 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %53
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.afs_fs_cursor*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
