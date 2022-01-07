; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_all_new_ancestors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_all_new_ancestors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { %struct.TYPE_2__, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.dentry = type { i32 }
%struct.btrfs_log_ctx = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, %struct.btrfs_log_ctx*)* @log_all_new_ancestors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_all_new_ancestors(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.dentry* %2, %struct.btrfs_log_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.btrfs_log_ctx*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.btrfs_log_ctx* %3, %struct.btrfs_log_ctx** %9, align 8
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 1
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %10, align 8
  %21 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %22 = call i64 @btrfs_ino(%struct.btrfs_inode* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %24 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %30 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %9, align 8
  %33 = call i32 @log_new_ancestors_fast(%struct.btrfs_trans_handle* %29, %struct.btrfs_inode* %30, %struct.dentry* %31, %struct.btrfs_log_ctx* %32)
  store i32 %33, i32* %5, align 4
  br label %133

34:                                               ; preds = %4
  %35 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %35, %struct.btrfs_path** %12, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %37 = icmp ne %struct.btrfs_path* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %133

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %125, %41
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %50 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %48, %struct.btrfs_key* %13, %struct.btrfs_path* %49, i32 0, i32 0)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %129

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %59 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64, %92
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load %struct.extent_buffer**, %struct.extent_buffer*** %67, align 8
  %69 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %68, i64 0
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %69, align 8
  store %struct.extent_buffer* %70, %struct.extent_buffer** %15, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %78 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %77)
  %79 = icmp sge i32 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %65
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %82 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %83 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %81, %struct.btrfs_path* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %129

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %128

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91
  br label %65

93:                                               ; preds = %65
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %94, %struct.btrfs_key* %17, i32 %95)
  %97 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %93
  br label %128

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @EMLINK, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %14, align 4
  br label %129

115:                                              ; preds = %107
  %116 = call i32 @memcpy(%struct.btrfs_key* %13, %struct.btrfs_key* %17, i32 24)
  %117 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %120 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %9, align 8
  %121 = call i32 @log_new_ancestors(%struct.btrfs_trans_handle* %117, %struct.btrfs_root* %118, %struct.btrfs_path* %119, %struct.btrfs_log_ctx* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %129

125:                                              ; preds = %115
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %127 = call i32 @btrfs_release_path(%struct.btrfs_path* %126)
  br label %47

128:                                              ; preds = %106, %90
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %124, %112, %86, %53
  %130 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %131 = call i32 @btrfs_free_path(%struct.btrfs_path* %130)
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %38, %28
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @log_new_ancestors_fast(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, %struct.btrfs_log_ctx*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @log_new_ancestors(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
