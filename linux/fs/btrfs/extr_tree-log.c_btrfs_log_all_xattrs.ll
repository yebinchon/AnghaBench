; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_all_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_all_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_XATTR_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_path*, %struct.btrfs_path*)* @btrfs_log_all_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_log_all_xattrs(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_inode* %2, %struct.btrfs_path* %3, %struct.btrfs_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_inode*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.extent_buffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_inode* %2, %struct.btrfs_inode** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store %struct.btrfs_path* %4, %struct.btrfs_path** %11, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %23 = call i64 @btrfs_ino(%struct.btrfs_inode* %22)
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* @BTRFS_XATTR_ITEM_KEY, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %31 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %29, %struct.btrfs_key* %13, %struct.btrfs_path* %30, i32 0, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %137

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %36, %86, %106
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  %45 = load %struct.extent_buffer**, %struct.extent_buffer*** %44, align 8
  %46 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %45, i64 0
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %46, align 8
  store %struct.extent_buffer* %47, %struct.extent_buffer** %18, align 8
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %49 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %37
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  store i64 0, i64* %20, align 8
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %58 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @copy_items(%struct.btrfs_trans_handle* %57, %struct.btrfs_inode* %58, %struct.btrfs_path* %59, %struct.btrfs_path* %60, i64* %20, i32 %61, i32 %62, i32 1, i32 0)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sle i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %137

72:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %75 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %76 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %74, %struct.btrfs_path* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %137

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %116

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  br label %37

87:                                               ; preds = %37
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %88, %struct.btrfs_key* %13, i32 %89)
  %91 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BTRFS_XATTR_ITEM_KEY, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %87
  br label %116

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %110 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = call i32 (...) @cond_resched()
  br label %37

116:                                              ; preds = %100, %84
  %117 = load i32, i32* %15, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  store i64 0, i64* %21, align 8
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %121 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %122 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %123 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @copy_items(%struct.btrfs_trans_handle* %120, %struct.btrfs_inode* %121, %struct.btrfs_path* %122, %struct.btrfs_path* %123, i64* %21, i32 %124, i32 %125, i32 1, i32 0)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp sle i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @ASSERT(i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %6, align 4
  br label %137

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %116
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %133, %79, %70, %34
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @copy_items(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.btrfs_path*, %struct.btrfs_path*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
