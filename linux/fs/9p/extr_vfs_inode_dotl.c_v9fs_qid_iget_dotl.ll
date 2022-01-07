; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_qid_iget_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_qid_iget_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32 }
%struct.p9_qid = type { i32 }
%struct.p9_fid = type { i32 }
%struct.p9_stat_dotl = type { i32, i32 }

@v9fs_set_inode_dotl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.p9_qid*, %struct.p9_fid*, %struct.p9_stat_dotl*, i32)* @v9fs_qid_iget_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @v9fs_qid_iget_dotl(%struct.super_block* %0, %struct.p9_qid* %1, %struct.p9_fid* %2, %struct.p9_stat_dotl* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.p9_qid*, align 8
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca %struct.p9_stat_dotl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.v9fs_session_info*, align 8
  %16 = alloca i32 (%struct.inode*, i8*)*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.p9_qid* %1, %struct.p9_qid** %8, align 8
  store %struct.p9_fid* %2, %struct.p9_fid** %9, align 8
  store %struct.p9_stat_dotl* %3, %struct.p9_stat_dotl** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %18, align 8
  store %struct.v9fs_session_info* %19, %struct.v9fs_session_info** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 (%struct.inode*, i8*)* @v9fs_test_new_inode_dotl, i32 (%struct.inode*, i8*)** %16, align 8
  br label %24

23:                                               ; preds = %5
  store i32 (%struct.inode*, i8*)* @v9fs_test_inode_dotl, i32 (%struct.inode*, i8*)** %16, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.p9_qid*, %struct.p9_qid** %8, align 8
  %26 = call i64 @v9fs_qid2ino(%struct.p9_qid* %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %16, align 8
  %30 = load i32, i32* @v9fs_set_inode_dotl, align 4
  %31 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %10, align 8
  %32 = call %struct.inode* @iget5_locked(%struct.super_block* %27, i64 %28, i32 (%struct.inode*, i8*)* %29, i32 %30, %struct.p9_stat_dotl* %31)
  store %struct.inode* %32, %struct.inode** %14, align 8
  %33 = load %struct.inode*, %struct.inode** %14, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.inode* @ERR_PTR(i32 %37)
  store %struct.inode* %38, %struct.inode** %6, align 8
  br label %86

39:                                               ; preds = %24
  %40 = load %struct.inode*, %struct.inode** %14, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I_NEW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %47, %struct.inode** %6, align 8
  br label %86

48:                                               ; preds = %39
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.inode*, %struct.inode** %14, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %53 = load %struct.inode*, %struct.inode** %14, align 8
  %54 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %10, align 8
  %55 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %10, align 8
  %58 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @new_decode_dev(i32 %59)
  %61 = call i32 @v9fs_init_inode(%struct.v9fs_session_info* %52, %struct.inode* %53, i32 %56, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %81

65:                                               ; preds = %48
  %66 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %10, align 8
  %67 = load %struct.inode*, %struct.inode** %14, align 8
  %68 = call i32 @v9fs_stat2inode_dotl(%struct.p9_stat_dotl* %66, %struct.inode* %67, i32 0)
  %69 = load %struct.inode*, %struct.inode** %14, align 8
  %70 = call i32 @v9fs_cache_inode_get_cookie(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %14, align 8
  %72 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %73 = call i32 @v9fs_get_acl(%struct.inode* %71, %struct.p9_fid* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.inode*, %struct.inode** %14, align 8
  %79 = call i32 @unlock_new_inode(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %80, %struct.inode** %6, align 8
  br label %86

81:                                               ; preds = %76, %64
  %82 = load %struct.inode*, %struct.inode** %14, align 8
  %83 = call i32 @iget_failed(%struct.inode* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.inode* @ERR_PTR(i32 %84)
  store %struct.inode* %85, %struct.inode** %6, align 8
  br label %86

86:                                               ; preds = %81, %77, %46, %35
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %87
}

declare dso_local i32 @v9fs_test_new_inode_dotl(%struct.inode*, i8*) #1

declare dso_local i32 @v9fs_test_inode_dotl(%struct.inode*, i8*) #1

declare dso_local i64 @v9fs_qid2ino(%struct.p9_qid*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32 (%struct.inode*, i8*)*, i32, %struct.p9_stat_dotl*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @v9fs_init_inode(%struct.v9fs_session_info*, %struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @v9fs_stat2inode_dotl(%struct.p9_stat_dotl*, %struct.inode*, i32) #1

declare dso_local i32 @v9fs_cache_inode_get_cookie(%struct.inode*) #1

declare dso_local i32 @v9fs_get_acl(%struct.inode*, %struct.p9_fid*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
