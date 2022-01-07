; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_refresh_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_refresh_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.inode = type { i32, i32 }
%struct.p9_wstat = type { i32 }
%struct.v9fs_session_info = type { i64 }

@S_IFMT = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@V9FS_STAT2INODE_KEEP_ISIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_refresh_inode(%struct.p9_fid* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_wstat*, align 8
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %11)
  store %struct.v9fs_session_info* %12, %struct.v9fs_session_info** %9, align 8
  %13 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %14 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_fid* %13)
  store %struct.p9_wstat* %14, %struct.p9_wstat** %8, align 8
  %15 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %16 = call i64 @IS_ERR(%struct.p9_wstat* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.p9_wstat* %19)
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %23 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %24 = call i32 @p9mode2unixmode(%struct.v9fs_session_info* %22, %struct.p9_wstat* %23, i32* %7)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S_IFMT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @S_IFMT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %59

35:                                               ; preds = %21
  %36 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %37 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CACHE_LOOSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %43 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CACHE_FSCACHE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @V9FS_STAT2INODE_KEEP_ISIZE, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %10, align 4
  %52 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @v9fs_stat2inode(%struct.p9_wstat* %52, %struct.inode* %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %34
  %60 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %61 = call i32 @p9stat_free(%struct.p9_wstat* %60)
  %62 = load %struct.p9_wstat*, %struct.p9_wstat** %8, align 8
  %63 = call i32 @kfree(%struct.p9_wstat* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_fid*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_wstat*) #1

declare dso_local i32 @p9mode2unixmode(%struct.v9fs_session_info*, %struct.p9_wstat*, i32*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.p9_wstat*, %struct.inode*, i32, i32) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
