; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_tree_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_tree_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_root* (%struct.btrfs_root*, %struct.btrfs_key*)* @btrfs_read_tree_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %0, %struct.btrfs_key* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_key*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %5, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 4
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %7, align 8
  %15 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %15, %struct.btrfs_path** %8, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %17 = icmp ne %struct.btrfs_path* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.btrfs_root* @ERR_PTR(i32 %20)
  store %struct.btrfs_root* %21, %struct.btrfs_root** %3, align 8
  br label %111

22:                                               ; preds = %2
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info* %23, i32 %24)
  store %struct.btrfs_root* %25, %struct.btrfs_root** %6, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %27 = icmp ne %struct.btrfs_root* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %108

31:                                               ; preds = %22
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %34 = load %struct.btrfs_key*, %struct.btrfs_key** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__setup_root(%struct.btrfs_root* %32, %struct.btrfs_fs_info* %33, i32 %36)
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %39 = load %struct.btrfs_key*, %struct.btrfs_key** %5, align 8
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 2
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 3
  %45 = call i32 @btrfs_find_root(%struct.btrfs_root* %38, %struct.btrfs_key* %39, %struct.btrfs_path* %40, i32* %42, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %105

55:                                               ; preds = %31
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 2
  %58 = call i32 @btrfs_root_generation(i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 2
  %61 = call i32 @btrfs_root_level(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 2
  %65 = call i32 @btrfs_root_bytenr(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @read_tree_block(%struct.btrfs_fs_info* %62, i32 %65, i32 %66, i32 %67, i32* null)
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %55
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %10, align 4
  br label %105

81:                                               ; preds = %55
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %83 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @btrfs_buffer_uptodate(i32 %84, i32 %85, i32 0)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %92 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @free_extent_buffer(i32 %93)
  br label %105

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %98 = call i32 @btrfs_root_node(%struct.btrfs_root* %97)
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %100 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %108, %96
  %102 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %103 = call i32 @btrfs_free_path(%struct.btrfs_path* %102)
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %104, %struct.btrfs_root** %3, align 8
  br label %111

105:                                              ; preds = %88, %76, %54
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %107 = call i32 @kfree(%struct.btrfs_root* %106)
  br label %108

108:                                              ; preds = %105, %28
  %109 = load i32, i32* %10, align 4
  %110 = call %struct.btrfs_root* @ERR_PTR(i32 %109)
  store %struct.btrfs_root* %110, %struct.btrfs_root** %6, align 8
  br label %101

111:                                              ; preds = %101, %18
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  ret %struct.btrfs_root* %112
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_root* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @__setup_root(%struct.btrfs_root*, %struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_find_root(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32*, i32*) #1

declare dso_local i32 @btrfs_root_generation(i32*) #1

declare dso_local i32 @btrfs_root_level(i32*) #1

declare dso_local i32 @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_root_bytenr(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @btrfs_buffer_uptodate(i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @btrfs_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
