; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_btrfs_print_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_btrfs_print_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"node %llu level %d gen %llu total ptrs %d free spc %u owner %llu\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09key %d (%llu %u %llu) block %llu gen %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_print_tree(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_key, align 4
  %11 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %13 = icmp ne %struct.extent_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %131

15:                                               ; preds = %2
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 0
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %5, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %20 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %22 = call i32 @btrfs_header_level(%struct.extent_buffer* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %27 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %26)
  br label %131

28:                                               ; preds = %15
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %31 = call i32 @btrfs_header_bytenr(%struct.extent_buffer* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %34 = call i32 @btrfs_header_generation(%struct.extent_buffer* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %37 = call i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %36)
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %42 = call i32 @btrfs_header_owner(%struct.extent_buffer* %41)
  %43 = call i32 @btrfs_info(%struct.btrfs_fs_info* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %34, i32 %35, i32 %40, i32 %42)
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %45 = call i32 @print_eb_refs_lock(%struct.extent_buffer* %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %68, %28
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %51, %struct.btrfs_key* %8, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %61, i32 %62)
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %64, i32 %65)
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56, i32 %58, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %131

75:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %76
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %81, %struct.btrfs_key* %10, i32 %82)
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %85, i32 %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %84, i32 %87, i32 %90, i32 %92, %struct.btrfs_key* %10)
  store %struct.extent_buffer* %93, %struct.extent_buffer** %11, align 8
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %95 = call i64 @IS_ERR(%struct.extent_buffer* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %128

98:                                               ; preds = %80
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %100 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %104 = call i32 @free_extent_buffer(%struct.extent_buffer* %103)
  br label %128

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %108 = call i64 @btrfs_is_leaf(%struct.extent_buffer* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (...) @BUG()
  br label %115

115:                                              ; preds = %113, %110, %106
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %117 = call i32 @btrfs_header_level(%struct.extent_buffer* %116)
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 (...) @BUG()
  br label %123

123:                                              ; preds = %121, %115
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %125 = load i32, i32* %4, align 4
  call void @btrfs_print_tree(%struct.extent_buffer* %124, i32 %125)
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %127 = call i32 @free_extent_buffer(%struct.extent_buffer* %126)
  br label %128

128:                                              ; preds = %123, %102, %97
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %76

131:                                              ; preds = %14, %25, %74, %76
  ret void
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_print_leaf(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_header_bytenr(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local i32 @print_eb_refs_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_is_leaf(%struct.extent_buffer*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
