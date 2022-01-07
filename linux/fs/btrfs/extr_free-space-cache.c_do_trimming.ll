; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_do_trimming.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_do_trimming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, i64, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info*, %struct.btrfs_space_info* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32, i32, i32 }
%struct.btrfs_trim_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i64*, i64, i64, i64, i64, %struct.btrfs_trim_range*)* @do_trimming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_trimming(%struct.btrfs_block_group_cache* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.btrfs_trim_range* %6) #0 {
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.btrfs_trim_range*, align 8
  %15 = alloca %struct.btrfs_space_info*, align 8
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca %struct.btrfs_free_space_ctl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.btrfs_trim_range* %6, %struct.btrfs_trim_range** %14, align 8
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 5
  %23 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %22, align 8
  store %struct.btrfs_space_info* %23, %struct.btrfs_space_info** %15, align 8
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %24, i32 0, i32 4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %25, align 8
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %16, align 8
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 3
  %29 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %28, align 8
  store %struct.btrfs_free_space_ctl* %29, %struct.btrfs_free_space_ctl** %17, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  %30 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %31 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %7
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %50 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  store i32 1, i32* %19, align 4
  br label %55

55:                                               ; preds = %40, %7
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %60 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @btrfs_discard_extent(%struct.btrfs_fs_info* %62, i64 %63, i64 %64, i64* %20)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %55
  %69 = load i64, i64* %20, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %69
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %55
  %74 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %17, align 8
  %75 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %77, i64 %78, i64 %79)
  %81 = load %struct.btrfs_trim_range*, %struct.btrfs_trim_range** %14, align 8
  %82 = getelementptr inbounds %struct.btrfs_trim_range, %struct.btrfs_trim_range* %81, i32 0, i32 0
  %83 = call i32 @list_del(i32* %82)
  %84 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %17, align 8
  %85 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %73
  %90 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %91 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %90, i32 0, i32 0
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %97 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %103 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %100, %89
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %111 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %118 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %124 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %127 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock(i32* %127)
  br label %129

129:                                              ; preds = %108, %73
  %130 = load i32, i32* %18, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_discard_extent(%struct.btrfs_fs_info*, i64, i64, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
