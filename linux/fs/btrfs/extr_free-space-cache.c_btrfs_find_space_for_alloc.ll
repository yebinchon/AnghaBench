; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_find_space_for_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_find_space_for_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i64, i64, i64 }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.btrfs_free_space_ctl*, align 8
  %12 = alloca %struct.btrfs_free_space*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 2
  %19 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %18, align 8
  store %struct.btrfs_free_space_ctl* %19, %struct.btrfs_free_space_ctl** %11, align 8
  store %struct.btrfs_free_space* null, %struct.btrfs_free_space** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %23 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %24 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64*, i64** %10, align 8
  %31 = call %struct.btrfs_free_space* @find_free_space(%struct.btrfs_free_space_ctl* %26, i64* %7, i64* %13, i32 %29, i64* %30)
  store %struct.btrfs_free_space* %31, %struct.btrfs_free_space** %12, align 8
  %32 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %33 = icmp ne %struct.btrfs_free_space* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %103

35:                                               ; preds = %5
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %38 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %43 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %42, %struct.btrfs_free_space* %43, i64 %44, i64 %45)
  %47 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %48 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %53 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %54 = call i32 @free_bitmap(%struct.btrfs_free_space_ctl* %52, %struct.btrfs_free_space* %53)
  br label %55

55:                                               ; preds = %51, %41
  br label %102

56:                                               ; preds = %35
  %57 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %58 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %59 = call i32 @unlink_free_space(%struct.btrfs_free_space_ctl* %57, %struct.btrfs_free_space* %58)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %62 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %16, align 8
  %65 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %66 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %72 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %74 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp slt i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %16, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %86 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %90 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %56
  %94 = load i32, i32* @btrfs_free_space_cachep, align 4
  %95 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %96 = call i32 @kmem_cache_free(i32 %94, %struct.btrfs_free_space* %95)
  br label %101

97:                                               ; preds = %56
  %98 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %99 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %100 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %98, %struct.btrfs_free_space* %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %55
  br label %103

103:                                              ; preds = %102, %34
  %104 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %105 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i64, i64* %16, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %111 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i32 @__btrfs_add_free_space(i32 %112, %struct.btrfs_free_space_ctl* %113, i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %109, %103
  %118 = load i64, i64* %14, align 8
  ret i64 %118
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_free_space* @find_free_space(%struct.btrfs_free_space_ctl*, i64*, i64*, i32, i64*) #1

declare dso_local i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @free_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @unlink_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

declare dso_local i32 @link_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__btrfs_add_free_space(i32, %struct.btrfs_free_space_ctl*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
