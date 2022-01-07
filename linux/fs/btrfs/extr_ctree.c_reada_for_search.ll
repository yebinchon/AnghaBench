; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_reada_for_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_reada_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i64, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@READA_BACK = common dso_local global i64 0, align 8
@READA_FORWARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_path*, i32, i32, i64)* @reada_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reada_for_search(%struct.btrfs_fs_info* %0, %struct.btrfs_path* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.btrfs_disk_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %146

24:                                               ; preds = %5
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %25, i32 0, i32 1
  %27 = load %struct.extent_buffer**, %struct.extent_buffer*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %27, i64 %29
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %30, align 8
  %32 = icmp ne %struct.extent_buffer* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %146

34:                                               ; preds = %24
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 1
  %37 = load %struct.extent_buffer**, %struct.extent_buffer*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %37, i64 %39
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %40, align 8
  store %struct.extent_buffer* %41, %struct.extent_buffer** %11, align 8
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %42, i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %48, i64 %49)
  store %struct.extent_buffer* %50, %struct.extent_buffer** %17, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %52 = icmp ne %struct.extent_buffer* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %55 = call i32 @free_extent_buffer(%struct.extent_buffer* %54)
  br label %146

56:                                               ; preds = %34
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %59 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %56, %145
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @READA_BACK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %18, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %146

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %18, align 4
  br label %89

74:                                               ; preds = %61
  %75 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %76 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @READA_FORWARD, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %146

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %71
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @READA_BACK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @btrfs_node_key(%struct.extent_buffer* %99, %struct.btrfs_disk_key* %12, i32 %100)
  %102 = call i64 @btrfs_disk_key_objectid(%struct.btrfs_disk_key* %12)
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %146

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %95, %89
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %108, i32 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %14, align 8
  %117 = sub nsw i64 %115, %116
  %118 = icmp sle i64 %117, 65536
  br i1 %118, label %128, label %119

119:                                              ; preds = %114, %107
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = sub nsw i64 %124, %125
  %127 = icmp sle i64 %126, 65536
  br i1 %127, label %128, label %136

128:                                              ; preds = %123, %114
  %129 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @readahead_tree_block(%struct.btrfs_fs_info* %129, i64 %130)
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %16, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %16, align 8
  br label %136

136:                                              ; preds = %128, %123, %119
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %20, align 4
  %139 = load i64, i64* %16, align 8
  %140 = icmp sgt i64 %139, 65536
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %20, align 4
  %143 = icmp sgt i32 %142, 32
  br i1 %143, label %144, label %145

144:                                              ; preds = %141, %136
  br label %146

145:                                              ; preds = %141
  br label %61

146:                                              ; preds = %23, %33, %53, %144, %105, %86, %70
  ret void
}

declare dso_local i64 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i64 @btrfs_disk_key_objectid(%struct.btrfs_disk_key*) #1

declare dso_local i32 @readahead_tree_block(%struct.btrfs_fs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
