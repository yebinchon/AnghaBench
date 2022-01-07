; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_new_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_new_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64 }
%struct.btrfs_inode = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.btrfs_log_ctx = type { i32 }

@BTRFS_DONT_NEED_TRANS_COMMIT = common dso_local global i32 0, align 4
@BTRFS_DONT_NEED_LOG_SYNC = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@LOG_INODE_EXISTS = common dso_local global i32 0, align 4
@BTRFS_NO_LOG_SYNC = common dso_local global i32 0, align 4
@BTRFS_NEED_TRANS_COMMIT = common dso_local global i32 0, align 4
@BTRFS_NEED_LOG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_log_new_name(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.btrfs_inode* %2, %struct.dentry* %3, i32 %4, %struct.btrfs_log_ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_inode*, align 8
  %10 = alloca %struct.btrfs_inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_log_ctx*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_log_ctx, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %9, align 8
  store %struct.btrfs_inode* %2, %struct.btrfs_inode** %10, align 8
  store %struct.dentry* %3, %struct.dentry** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.btrfs_log_ctx* %5, %struct.btrfs_log_ctx** %13, align 8
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %18 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %17, i32 0, i32 1
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %14, align 8
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %21 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISDIR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %6
  %33 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %34 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = load %struct.btrfs_inode*, %struct.btrfs_inode** %10, align 8
  %42 = icmp ne %struct.btrfs_inode* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.btrfs_inode*, %struct.btrfs_inode** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @BTRFS_DONT_NEED_TRANS_COMMIT, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @BTRFS_DONT_NEED_LOG_SYNC, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %7, align 4
  br label %119

60:                                               ; preds = %43, %32
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %65 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %64, i32 0, i32 2
  %66 = call i32 @btrfs_init_log_ctx(%struct.btrfs_log_ctx* %16, %struct.TYPE_2__* %65)
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %68 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = load i32, i32* @LLONG_MAX, align 4
  %71 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %72 = call i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle* %67, %struct.btrfs_inode* %68, %struct.dentry* %69, i32 0, i32 %70, i32 %71, %struct.btrfs_log_ctx* %16)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @BTRFS_NO_LOG_SYNC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @BTRFS_DONT_NEED_TRANS_COMMIT, align 4
  store i32 %77, i32* %7, align 4
  br label %119

78:                                               ; preds = %63
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @BTRFS_NEED_TRANS_COMMIT, align 4
  store i32 %82, i32* %7, align 4
  br label %119

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %86 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %87 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @btrfs_sync_log(%struct.btrfs_trans_handle* %85, i32 %88, %struct.btrfs_log_ctx* %16)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @BTRFS_NEED_TRANS_COMMIT, align 4
  store i32 %93, i32* %7, align 4
  br label %119

94:                                               ; preds = %84
  %95 = load i32, i32* @BTRFS_DONT_NEED_TRANS_COMMIT, align 4
  store i32 %95, i32* %7, align 4
  br label %119

96:                                               ; preds = %60
  %97 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %13, align 8
  %98 = call i32 @ASSERT(%struct.btrfs_log_ctx* %97)
  %99 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %100 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %101 = load %struct.dentry*, %struct.dentry** %11, align 8
  %102 = load i32, i32* @LLONG_MAX, align 4
  %103 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %104 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %13, align 8
  %105 = call i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle* %99, %struct.btrfs_inode* %100, %struct.dentry* %101, i32 0, i32 %102, i32 %103, %struct.btrfs_log_ctx* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @BTRFS_NO_LOG_SYNC, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @BTRFS_DONT_NEED_LOG_SYNC, align 4
  store i32 %110, i32* %7, align 4
  br label %119

111:                                              ; preds = %96
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @BTRFS_NEED_TRANS_COMMIT, align 4
  store i32 %115, i32* %7, align 4
  br label %119

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @BTRFS_NEED_LOG_SYNC, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %114, %109, %94, %92, %81, %76, %58
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @btrfs_init_log_ctx(%struct.btrfs_log_ctx*, %struct.TYPE_2__*) #1

declare dso_local i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, i32, i32, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_sync_log(%struct.btrfs_trans_handle*, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @ASSERT(%struct.btrfs_log_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
