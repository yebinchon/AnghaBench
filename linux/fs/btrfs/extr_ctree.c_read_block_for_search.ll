; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_read_block_for_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_read_block_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i64 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@EUCLEAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@READA_NONE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*)* @read_block_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block_for_search(%struct.btrfs_root* %0, %struct.btrfs_path* %1, %struct.extent_buffer** %2, i32 %3, i32 %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.extent_buffer**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_key*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca %struct.extent_buffer*, align 8
  %19 = alloca %struct.btrfs_key, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %9, align 8
  store %struct.extent_buffer** %2, %struct.extent_buffer*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.btrfs_key* %5, %struct.btrfs_key** %13, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %23, align 8
  store %struct.btrfs_fs_info* %24, %struct.btrfs_fs_info** %14, align 8
  %25 = load %struct.extent_buffer**, %struct.extent_buffer*** %10, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  store %struct.extent_buffer* %26, %struct.extent_buffer** %17, align 8
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %34 = call i32 @btrfs_header_level(%struct.extent_buffer* %33)
  store i32 %34, i32* %21, align 4
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %35, %struct.btrfs_key* %19, i32 %36)
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %38, i32 %39)
  store %struct.extent_buffer* %40, %struct.extent_buffer** %18, align 8
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %42 = icmp ne %struct.extent_buffer* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %6
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %44, i32 %45, i32 1)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %16, align 4
  %53 = call i64 @btrfs_verify_level_key(%struct.extent_buffer* %49, i32 %51, %struct.btrfs_key* %19, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %57 = call i32 @free_extent_buffer(%struct.extent_buffer* %56)
  %58 = load i32, i32* @EUCLEAN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %133

60:                                               ; preds = %48
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %62 = load %struct.extent_buffer**, %struct.extent_buffer*** %10, align 8
  store %struct.extent_buffer* %61, %struct.extent_buffer** %62, align 8
  store i32 0, i32* %7, align 4
  br label %133

63:                                               ; preds = %43
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %65 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %64)
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %21, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @btrfs_read_buffer(%struct.extent_buffer* %66, i32 %67, i32 %69, %struct.btrfs_key* %19)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %75 = load %struct.extent_buffer**, %struct.extent_buffer*** %10, align 8
  store %struct.extent_buffer* %74, %struct.extent_buffer** %75, align 8
  store i32 0, i32* %7, align 4
  br label %133

76:                                               ; preds = %63
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %78 = call i32 @free_extent_buffer(%struct.extent_buffer* %77)
  %79 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %80 = call i32 @btrfs_release_path(%struct.btrfs_path* %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %133

83:                                               ; preds = %6
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %84, i32 %86)
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %89 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %88)
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @READA_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %83
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reada_for_search(%struct.btrfs_fs_info* %96, %struct.btrfs_path* %97, i32 %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %95, %83
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %20, align 4
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %21, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %107, i32 %108, i32 %109, i32 %111, %struct.btrfs_key* %19)
  store %struct.extent_buffer* %112, %struct.extent_buffer** %18, align 8
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %114 = call i32 @IS_ERR(%struct.extent_buffer* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %104
  %117 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %118 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %125 = call i32 @free_extent_buffer(%struct.extent_buffer* %124)
  br label %129

126:                                              ; preds = %104
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %128 = call i32 @PTR_ERR(%struct.extent_buffer* %127)
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %131 = call i32 @btrfs_release_path(%struct.btrfs_path* %130)
  %132 = load i32, i32* %20, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %76, %73, %60, %55
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_buffer_uptodate(%struct.extent_buffer*, i32, i32) #1

declare dso_local i64 @btrfs_verify_level_key(%struct.extent_buffer*, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_read_buffer(%struct.extent_buffer*, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @reada_for_search(%struct.btrfs_fs_info*, %struct.btrfs_path*, i32, i32, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
