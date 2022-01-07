; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_dec_block_group_ro.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_dec_block_group_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_2__, i32, %struct.btrfs_space_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_space_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_dec_block_group_ro(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_space_info*, align 8
  %4 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %5 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %5, i32 0, i32 8
  %7 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  store %struct.btrfs_space_info* %7, %struct.btrfs_space_info** %3, align 8
  %8 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %1
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %43, i32 0, i32 2
  %45 = call i64 @btrfs_block_group_used(i32* %44)
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %55 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %54, i32 0, i32 1
  %56 = call i32 @list_del_init(i32* %55)
  br label %57

57:                                               ; preds = %26, %1
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %62 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
