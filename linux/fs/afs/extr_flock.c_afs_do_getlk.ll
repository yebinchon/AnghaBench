; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i64, i32, i64 }
%struct.afs_vnode = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_VNODE_LOCK_DELETED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = %d [%hd]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @afs_do_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_getlk(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call i32 @locks_inode(%struct.file* %10)
  %12 = call %struct.afs_vnode* @AFS_FS_I(i32 %11)
  store %struct.afs_vnode* %12, %struct.afs_vnode** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call %struct.key* @afs_file_key(%struct.file* %13)
  store %struct.key* %14, %struct.key** %7, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AFS_VNODE_LOCK_DELETED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load i32, i32* @F_UNLCK, align 4
  %26 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %30 = call i32 @posix_test_lock(%struct.file* %28, %struct.file_lock* %29)
  %31 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @F_UNLCK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %24
  %37 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %38 = load %struct.key*, %struct.key** %7, align 8
  %39 = call i32 @afs_fetch_status(%struct.afs_vnode* %37, %struct.key* %38, i32 0, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %72

43:                                               ; preds = %36
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @READ_ONCE(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @F_RDLCK, align 4
  %56 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @F_WRLCK, align 4
  %60 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %61 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @OFFSET_MAX, align 4
  %66 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %67 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %43
  br label %71

71:                                               ; preds = %70, %24
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @locks_inode(%struct.file*) #1

declare dso_local %struct.key* @afs_file_key(%struct.file*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @afs_fetch_status(%struct.afs_vnode*, %struct.key*, i32, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @_leave(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
