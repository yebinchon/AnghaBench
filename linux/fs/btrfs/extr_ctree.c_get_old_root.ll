; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_get_old_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_get_old_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.tree_mod_elem = type { i64, i32, %struct.tree_mod_root }
%struct.tree_mod_root = type { i32, i32 }

@MOD_LOG_ROOT_REPLACE = common dso_local global i64 0, align 8
@MOD_LOG_KEY_REMOVE_WHILE_FREEING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"failed to read tree block %llu from get_old_root\00", align 1
@BTRFS_MIXED_BACKREF_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_root*, i32)* @get_old_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @get_old_root(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.tree_mod_elem*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.tree_mod_root*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %6, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.tree_mod_root* null, %struct.tree_mod_root** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %20 = call %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root* %19)
  store %struct.extent_buffer* %20, %struct.extent_buffer** %9, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.extent_buffer* %21, i32 %22)
  store %struct.tree_mod_elem* %23, %struct.tree_mod_elem** %7, align 8
  %24 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %25 = icmp ne %struct.tree_mod_elem* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  store %struct.extent_buffer* %27, %struct.extent_buffer** %3, align 8
  br label %183

28:                                               ; preds = %2
  %29 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %30 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MOD_LOG_ROOT_REPLACE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %36 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %35, i32 0, i32 2
  store %struct.tree_mod_root* %36, %struct.tree_mod_root** %12, align 8
  %37 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %38 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %41 = getelementptr inbounds %struct.tree_mod_root, %struct.tree_mod_root* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %44 = getelementptr inbounds %struct.tree_mod_root, %struct.tree_mod_root* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  br label %52

46:                                               ; preds = %28
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %51 = call i32 @btrfs_header_level(%struct.extent_buffer* %50)
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %46, %34
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info* %53, i32 %54, i32 %55)
  store %struct.tree_mod_elem* %56, %struct.tree_mod_elem** %7, align 8
  %57 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %58 = icmp ne %struct.tree_mod_root* %57, null
  br i1 %58, label %59, label %107

59:                                               ; preds = %52
  %60 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %61 = icmp ne %struct.tree_mod_elem* %60, null
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %64 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MOD_LOG_KEY_REMOVE_WHILE_FREEING, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %62
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %70 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %69)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %72 = call i32 @free_extent_buffer(%struct.extent_buffer* %71)
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %73, i32 %74, i32 0, i32 %75, i32* null)
  store %struct.extent_buffer* %76, %struct.extent_buffer** %11, align 8
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %78 = call i64 @IS_ERR(%struct.extent_buffer* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %68
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %82 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %80, %68
  %86 = phi i1 [ true, %68 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = call i64 @WARN_ON(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %92 = call i64 @IS_ERR(%struct.extent_buffer* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %96 = call i32 @free_extent_buffer(%struct.extent_buffer* %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %106

101:                                              ; preds = %85
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %103 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %102)
  store %struct.extent_buffer* %103, %struct.extent_buffer** %8, align 8
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %105 = call i32 @free_extent_buffer(%struct.extent_buffer* %104)
  br label %106

106:                                              ; preds = %101, %97
  br label %130

107:                                              ; preds = %62, %59, %52
  %108 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %109 = icmp ne %struct.tree_mod_root* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %112 = call i32 @btrfs_header_owner(%struct.extent_buffer* %111)
  store i32 %112, i32* %10, align 4
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %114 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %113)
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %116 = call i32 @free_extent_buffer(%struct.extent_buffer* %115)
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %117, i32 %118)
  store %struct.extent_buffer* %119, %struct.extent_buffer** %8, align 8
  br label %129

120:                                              ; preds = %107
  %121 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %122 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %121)
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %124 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %123)
  store %struct.extent_buffer* %124, %struct.extent_buffer** %8, align 8
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %126 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %125)
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %128 = call i32 @free_extent_buffer(%struct.extent_buffer* %127)
  br label %129

129:                                              ; preds = %120, %110
  br label %130

130:                                              ; preds = %129, %106
  %131 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %132 = icmp ne %struct.extent_buffer* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store %struct.extent_buffer* null, %struct.extent_buffer** %3, align 8
  br label %183

134:                                              ; preds = %130
  %135 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %136 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %135)
  %137 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %138 = icmp ne %struct.tree_mod_root* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %142 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %140, i32 %143)
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %146 = load i32, i32* @BTRFS_MIXED_BACKREF_REV, align 4
  %147 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %145, i32 %146)
  %148 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %148, i32 %149)
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %152 = load %struct.tree_mod_root*, %struct.tree_mod_root** %12, align 8
  %153 = getelementptr inbounds %struct.tree_mod_root, %struct.tree_mod_root* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %151, i32 %154)
  %156 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %156, i32 %157)
  br label %159

159:                                              ; preds = %139, %134
  %160 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %161 = icmp ne %struct.tree_mod_elem* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %167 = call i32 @__tree_mod_log_rewind(%struct.btrfs_fs_info* %163, %struct.extent_buffer* %164, i32 %165, %struct.tree_mod_elem* %166)
  br label %174

168:                                              ; preds = %159
  %169 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %170 = call i32 @btrfs_header_level(%struct.extent_buffer* %169)
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i64 @WARN_ON(i32 %172)
  br label %174

174:                                              ; preds = %168, %162
  %175 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %176 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %175)
  %177 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %178 = call i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %177)
  %179 = icmp sgt i64 %176, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 @WARN_ON(i32 %180)
  %182 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %182, %struct.extent_buffer** %3, align 8
  br label %183

183:                                              ; preds = %174, %133, %26
  %184 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %184
}

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root*) #1

declare dso_local %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @__tree_mod_log_rewind(%struct.btrfs_fs_info*, %struct.extent_buffer*, i32, %struct.tree_mod_elem*) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
