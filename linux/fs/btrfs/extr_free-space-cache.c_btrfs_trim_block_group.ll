; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_trim_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_trim_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_trim_block_group(%struct.btrfs_block_group_cache* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  store i32 0, i32* %6, align 4
  br label %51

25:                                               ; preds = %5
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %27 = call i32 @btrfs_get_block_group_trimming(%struct.btrfs_block_group_cache* %26)
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @trim_no_bitmap(%struct.btrfs_block_group_cache* %31, i64* %32, i64 %33, i64 %34, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %47

40:                                               ; preds = %25
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @trim_bitmaps(%struct.btrfs_block_group_cache* %41, i64* %42, i64 %43, i64 %44, i64 %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %39
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %49 = call i32 @btrfs_put_block_group_trimming(%struct.btrfs_block_group_cache* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %21
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_get_block_group_trimming(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @trim_no_bitmap(%struct.btrfs_block_group_cache*, i64*, i64, i64, i64) #1

declare dso_local i32 @trim_bitmaps(%struct.btrfs_block_group_cache*, i64*, i64, i64, i64) #1

declare dso_local i32 @btrfs_put_block_group_trimming(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
