; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_del_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_del_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.extent_buffer* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.btrfs_disk_key = type { i32 }

@MOD_LOG_KEY_REMOVE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, %struct.btrfs_path*, i32, i32)* @del_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_ptr(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %13, i32 0, i32 0
  %15 = load %struct.extent_buffer**, %struct.extent_buffer*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %15, i64 %17
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  store %struct.extent_buffer* %19, %struct.extent_buffer** %9, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %21 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @tree_mod_log_insert_move(%struct.extent_buffer* %30, i32 %31, i32 %33, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  br label %43

43:                                               ; preds = %29, %26
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @btrfs_node_key_ptr_offset(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @btrfs_node_key_ptr_offset(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %44, i32 %46, i32 %49, i32 %56)
  br label %72

58:                                               ; preds = %4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MOD_LOG_KEY_REMOVE, align 4
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = call i32 @tree_mod_log_insert_key(%struct.extent_buffer* %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  br label %71

71:                                               ; preds = %61, %58
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %83 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %82, i32 0, i32 0
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %83, align 8
  %85 = icmp eq %struct.extent_buffer* %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %88 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %87, i32 0, i32 0
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %88, align 8
  %90 = call i32 @btrfs_header_level(%struct.extent_buffer* %89)
  %91 = icmp ne i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 0
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %95, align 8
  %97 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %96, i32 0)
  br label %109

98:                                               ; preds = %80, %72
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %103 = call i32 @btrfs_node_key(%struct.extent_buffer* %102, %struct.btrfs_disk_key* %12, i32 0)
  %104 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @fixup_low_keys(%struct.btrfs_path* %104, %struct.btrfs_disk_key* %12, i32 %106)
  br label %108

108:                                              ; preds = %101, %98
  br label %109

109:                                              ; preds = %108, %86
  %110 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %111 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %110)
  ret void
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @tree_mod_log_insert_move(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_node_key_ptr_offset(i32) #1

declare dso_local i32 @tree_mod_log_insert_key(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
