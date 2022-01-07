; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_refresh_inode_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_refresh_inode_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.inode = type { i32 }
%struct.p9_stat_dotl = type { i32 }
%struct.v9fs_session_info = type { i64 }

@P9_STATS_ALL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@V9FS_STAT2INODE_KEEP_ISIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_refresh_inode_dotl(%struct.p9_fid* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.p9_stat_dotl*, align 8
  %7 = alloca %struct.v9fs_session_info*, align 8
  %8 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %9)
  store %struct.v9fs_session_info* %10, %struct.v9fs_session_info** %7, align 8
  %11 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %12 = load i32, i32* @P9_STATS_ALL, align 4
  %13 = call %struct.p9_stat_dotl* @p9_client_getattr_dotl(%struct.p9_fid* %11, i32 %12)
  store %struct.p9_stat_dotl* %13, %struct.p9_stat_dotl** %6, align 8
  %14 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %6, align 8
  %15 = call i64 @IS_ERR(%struct.p9_stat_dotl* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.p9_stat_dotl* %18)
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IFMT, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %6, align 8
  %27 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IFMT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %54

33:                                               ; preds = %20
  %34 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %35 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CACHE_LOOSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %41 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CACHE_FSCACHE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @V9FS_STAT2INODE_KEEP_ISIZE, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  store i32 %49, i32* %8, align 4
  %50 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @v9fs_stat2inode_dotl(%struct.p9_stat_dotl* %50, %struct.inode* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %32
  %55 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %6, align 8
  %56 = call i32 @kfree(%struct.p9_stat_dotl* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_stat_dotl* @p9_client_getattr_dotl(%struct.p9_fid*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_stat_dotl*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_stat_dotl*) #1

declare dso_local i32 @v9fs_stat2inode_dotl(%struct.p9_stat_dotl*, %struct.inode*, i32) #1

declare dso_local i32 @kfree(%struct.p9_stat_dotl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
