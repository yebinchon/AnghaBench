; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_cond_migrate_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_cond_migrate_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i64, i64, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_cond_migrate_bytes(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_block_rsv*, align 8
  %11 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  store %struct.btrfs_block_rsv* %13, %struct.btrfs_block_rsv** %10, align 8
  %14 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %25, i32 0, i32 3
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @div_factor(i64 %30, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %41, i32 0, i32 3
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %24
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %61 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %46
  %63 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv* %66, i64 %67, i32 1)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %40, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @div_factor(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
