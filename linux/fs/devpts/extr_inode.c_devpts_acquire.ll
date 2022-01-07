; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pts_fs_info = type { i32 }
%struct.file = type { %struct.path }
%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i64, i32 }

@DEVPTS_SUPER_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pts_fs_info* @devpts_acquire(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pts_fs_info*, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = bitcast %struct.path* %4 to i8*
  %10 = bitcast %struct.path* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = call i32 @path_get(%struct.path* %4)
  %12 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEVPTS_SUPER_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = call i32 @devpts_ptmx_path(%struct.path* %4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.pts_fs_info* @ERR_PTR(i32 %25)
  store %struct.pts_fs_info* %26, %struct.pts_fs_info** %3, align 8
  br label %38

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %1
  %29 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.super_block*, %struct.super_block** %31, align 8
  store %struct.super_block* %32, %struct.super_block** %5, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* %36)
  store %struct.pts_fs_info* %37, %struct.pts_fs_info** %3, align 8
  br label %38

38:                                               ; preds = %28, %24
  %39 = call i32 @path_put(%struct.path* %4)
  %40 = load %struct.pts_fs_info*, %struct.pts_fs_info** %3, align 8
  ret %struct.pts_fs_info* %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @path_get(%struct.path*) #2

declare dso_local i32 @devpts_ptmx_path(%struct.path*) #2

declare dso_local %struct.pts_fs_info* @ERR_PTR(i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block*) #2

declare dso_local i32 @path_put(%struct.path*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
