; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_mntget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_mntget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.file = type { %struct.path }
%struct.path = type { i64, %struct.vfsmount* }
%struct.pts_fs_info = type { i32 }

@DEVPTS_SUPER_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @devpts_mntget(%struct.file* %0, %struct.pts_fs_info* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.pts_fs_info*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.pts_fs_info* %1, %struct.pts_fs_info** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = bitcast %struct.path* %6 to i8*
  %11 = bitcast %struct.path* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = call i32 @path_get(%struct.path* %6)
  br label %13

13:                                               ; preds = %25, %2
  %14 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %15 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %16 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = call i64 @follow_up(%struct.path* %6)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %26

25:                                               ; preds = %21
  br label %13

26:                                               ; preds = %24, %13
  %27 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %28 = load %struct.vfsmount*, %struct.vfsmount** %27, align 8
  %29 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DEVPTS_SUPER_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %37 = load %struct.vfsmount*, %struct.vfsmount** %36, align 8
  %38 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.TYPE_2__* %39)
  %41 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %42 = icmp ne %struct.pts_fs_info* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %26
  %44 = call i32 @devpts_ptmx_path(%struct.path* %6)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dput(i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %53 = load %struct.vfsmount*, %struct.vfsmount** %52, align 8
  %54 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.TYPE_2__* %55)
  %57 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %58 = icmp eq %struct.pts_fs_info* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %61 = load %struct.vfsmount*, %struct.vfsmount** %60, align 8
  store %struct.vfsmount* %61, %struct.vfsmount** %3, align 8
  br label %71

62:                                               ; preds = %51
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %45
  %66 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %67 = load %struct.vfsmount*, %struct.vfsmount** %66, align 8
  %68 = call i32 @mntput(%struct.vfsmount* %67)
  %69 = load i32, i32* %7, align 4
  %70 = call %struct.vfsmount* @ERR_PTR(i32 %69)
  store %struct.vfsmount* %70, %struct.vfsmount** %3, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  ret %struct.vfsmount* %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @path_get(%struct.path*) #2

declare dso_local i64 @follow_up(%struct.path*) #2

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.TYPE_2__*) #2

declare dso_local i32 @devpts_ptmx_path(%struct.path*) #2

declare dso_local i32 @dput(i64) #2

declare dso_local i32 @mntput(%struct.vfsmount*) #2

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
