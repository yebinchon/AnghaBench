; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_push_leaf_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_push_leaf_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32)* @push_leaf_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_leaf_right(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca %struct.extent_buffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 1
  %25 = load %struct.extent_buffer**, %struct.extent_buffer*** %24, align 8
  %26 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %25, i64 0
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %26, align 8
  store %struct.extent_buffer* %27, %struct.extent_buffer** %16, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 1
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 1
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %31, align 8
  %33 = icmp ne %struct.extent_buffer* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %147

35:                                               ; preds = %7
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 1
  %43 = load %struct.extent_buffer**, %struct.extent_buffer*** %42, align 8
  %44 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %43, i64 1
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %44, align 8
  store %struct.extent_buffer* %45, %struct.extent_buffer** %18, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %48 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %47)
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %147

52:                                               ; preds = %35
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %54 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %53, i32 0, i32 1
  %55 = load %struct.extent_buffer**, %struct.extent_buffer*** %54, align 8
  %56 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %55, i64 1
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %56, align 8
  %58 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %57)
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %60, 1
  %62 = call %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer* %59, i32 %61)
  store %struct.extent_buffer* %62, %struct.extent_buffer** %17, align 8
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %64 = call i64 @IS_ERR(%struct.extent_buffer* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %147

67:                                               ; preds = %52
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %69 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %68)
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %71 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %70)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %73 = call i32 @btrfs_leaf_free_space(%struct.extent_buffer* %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %142

78:                                               ; preds = %67
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %79, %struct.btrfs_root* %80, %struct.extent_buffer* %81, %struct.extent_buffer* %82, i32 %84, %struct.extent_buffer** %17)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %142

89:                                               ; preds = %78
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %91 = call i32 @btrfs_leaf_free_space(%struct.extent_buffer* %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %142

96:                                               ; preds = %89
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %98 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %97)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %142

102:                                              ; preds = %96
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %104 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %21, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %102
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %110
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %115 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %114)
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %117 = call i32 @free_extent_buffer(%struct.extent_buffer* %116)
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %120 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %119, i32 0, i32 1
  %121 = load %struct.extent_buffer**, %struct.extent_buffer*** %120, align 8
  %122 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %121, i64 0
  store %struct.extent_buffer* %118, %struct.extent_buffer** %122, align 8
  %123 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %124 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 0, i32* %126, align 4
  %127 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %128 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  store i32 0, i32* %8, align 4
  br label %147

133:                                              ; preds = %110, %102
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @__push_leaf_right(%struct.btrfs_path* %134, i32 %135, i32 %136, %struct.extent_buffer* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %8, align 4
  br label %147

142:                                              ; preds = %101, %95, %88, %77
  %143 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %144 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %143)
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %146 = call i32 @free_extent_buffer(%struct.extent_buffer* %145)
  store i32 1, i32* %8, align 4
  br label %147

147:                                              ; preds = %142, %133, %113, %66, %51, %34
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_leaf_free_space(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @__push_leaf_right(%struct.btrfs_path*, i32, i32, %struct.extent_buffer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
