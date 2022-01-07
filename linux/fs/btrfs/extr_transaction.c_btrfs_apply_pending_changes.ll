; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_apply_pending_changes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_apply_pending_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_PENDING_SET_INODE_MAP_CACHE = common dso_local global i32 0, align 4
@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_PENDING_CLEAR_INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_PENDING_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pending commit done\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unknown pending changes left 0x%lx, ignoring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_apply_pending_changes(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 1
  %7 = call i64 @xchg(i32* %6, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %69

11:                                               ; preds = %1
  %12 = load i32, i32* @BTRFS_PENDING_SET_INODE_MAP_CACHE, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INODE_MAP_CACHE, align 4
  %24 = call i32 @btrfs_set_opt(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  %26 = load i64, i64* %4, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* @BTRFS_PENDING_CLEAR_INODE_MAP_CACHE, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INODE_MAP_CACHE, align 4
  %42 = call i32 @btrfs_clear_opt(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %25
  %44 = load i64, i64* %4, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %3, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %3, align 8
  %48 = load i32, i32* @BTRFS_PENDING_COMMIT, align 4
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %57 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i64, i64* %4, align 8
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %10, %65, %58
  ret void
}

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i32 @btrfs_set_opt(i32, i32) #1

declare dso_local i32 @btrfs_clear_opt(i32, i32) #1

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
