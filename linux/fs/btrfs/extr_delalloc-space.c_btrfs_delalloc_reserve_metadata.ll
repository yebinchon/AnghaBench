; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_delalloc_reserve_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_delalloc_reserve_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btrfs_inode = type { i32, i32, i64, %struct.btrfs_block_rsv, %struct.btrfs_root* }
%struct.btrfs_block_rsv = type { i32, i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_RESERVE_FLUSH_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"delalloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delalloc_reserve_metadata(%struct.btrfs_inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_block_rsv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 4
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %6, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 0
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %7, align 8
  %21 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %21, i32 0, i32 3
  store %struct.btrfs_block_rsv* %22, %struct.btrfs_block_rsv** %8, align 8
  %23 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %24 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %25 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @BTRFS_RESERVE_FLUSH_LIMIT, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %38 = call i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @schedule_timeout(i32 1)
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ALIGN(i64 %51, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @calc_inode_reservations(%struct.btrfs_fs_info* %56, i64 %57, i64* %9, i64* %10)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @btrfs_qgroup_reserve_meta_prealloc(%struct.btrfs_root* %59, i64 %60, i32 1)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %128

65:                                               ; preds = %50
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %67 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @btrfs_reserve_metadata_bytes(%struct.btrfs_root* %66, %struct.btrfs_block_rsv* %67, i64 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %124

74:                                               ; preds = %65
  %75 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @count_max_extents(i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode* %80, i32 %81)
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %85 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %89 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %90 = call i32 @btrfs_calculate_inode_block_rsv_size(%struct.btrfs_fs_info* %88, %struct.btrfs_inode* %89)
  %91 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %92 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv* %94, i64 %95, i32 0)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %98 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %97, i32 0, i32 0
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %98, align 8
  %100 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %101 = call i32 @btrfs_ino(%struct.btrfs_inode* %100)
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %102, i32 1)
  %104 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %105 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %109 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %115 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %74
  %120 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %121 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %119, %74
  store i32 0, i32* %3, align 4
  br label %137

124:                                              ; preds = %73
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @btrfs_qgroup_free_meta_prealloc(%struct.btrfs_root* %125, i64 %126)
  br label %128

128:                                              ; preds = %124, %64
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %133 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %123
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_inode*) #1

declare dso_local i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @calc_inode_reservations(%struct.btrfs_fs_info*, i64, i64*, i64*) #1

declare dso_local i32 @btrfs_qgroup_reserve_meta_prealloc(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @btrfs_reserve_metadata_bytes(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @count_max_extents(i64) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode*, i32) #1

declare dso_local i32 @btrfs_calculate_inode_block_rsv_size(%struct.btrfs_fs_info*, %struct.btrfs_inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_qgroup_free_meta_prealloc(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
