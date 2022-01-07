; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.afs_file* }
%struct.afs_file = type { i32, i64 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%llx:%llu},\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.afs_file*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %8)
  store %struct.afs_vnode* %9, %struct.afs_vnode** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.afs_file*, %struct.afs_file** %11, align 8
  store %struct.afs_file* %12, %struct.afs_file** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FMODE_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = call i32 @vfs_fsync(%struct.file* %29, i32 0)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  store %struct.afs_file* null, %struct.afs_file** %33, align 8
  %34 = load %struct.afs_file*, %struct.afs_file** %6, align 8
  %35 = getelementptr inbounds %struct.afs_file, %struct.afs_file* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.afs_file*, %struct.afs_file** %6, align 8
  %40 = getelementptr inbounds %struct.afs_file, %struct.afs_file* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @afs_put_wb_key(i64 %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.afs_file*, %struct.afs_file** %6, align 8
  %45 = getelementptr inbounds %struct.afs_file, %struct.afs_file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @key_put(i32 %46)
  %48 = load %struct.afs_file*, %struct.afs_file** %6, align 8
  %49 = call i32 @kfree(%struct.afs_file* %48)
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %51 = call i32 @afs_prune_wb_keys(%struct.afs_vnode* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i32 @afs_put_wb_key(i64) #1

declare dso_local i32 @key_put(i32) #1

declare dso_local i32 @kfree(%struct.afs_file*) #1

declare dso_local i32 @afs_prune_wb_keys(%struct.afs_vnode*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
