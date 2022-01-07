; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_cache.c_v9fs_cache_inode_get_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_cache.c_v9fs_cache_inode_get_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_inode = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v9fs_session_info = type { i32 }

@v9fs_cache_inode_index_def = common dso_local global i32 0, align 4
@P9_DEBUG_FSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"inode %p get cookie %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_cache_inode_get_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.v9fs_inode*, align 8
  %4 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @S_ISREG(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %12)
  store %struct.v9fs_inode* %13, %struct.v9fs_inode** %3, align 8
  %14 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %15 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %20)
  store %struct.v9fs_session_info* %21, %struct.v9fs_session_info** %4, align 8
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %23 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %26 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %29 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %32 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %33 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %32, i32 0, i32 1
  %34 = call i32 @i_size_read(i32* %33)
  %35 = call i64 @fscache_acquire_cookie(i32 %24, i32* @v9fs_cache_inode_index_def, i32* %27, i32 4, i32* %30, i32 4, %struct.v9fs_inode* %31, i32 %34, i32 1)
  %36 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %37 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @P9_DEBUG_FSC, align 4
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %41 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @p9_debug(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.inode* %39, i64 %42)
  br label %44

44:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i64 @fscache_acquire_cookie(i32, i32*, i32*, i32, i32*, i32, %struct.v9fs_inode*, i32, i32) #1

declare dso_local i32 @i_size_read(i32*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
