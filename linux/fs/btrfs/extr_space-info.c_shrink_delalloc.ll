; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_shrink_delalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_shrink_delalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32, i32, i32, i32 }
%struct.btrfs_space_info = type { i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@EXTENT_SIZE_PER_ITEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i64, i64, i32)* @shrink_delalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_delalloc(%struct.btrfs_fs_info* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_space_info*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @calc_reclaim_items_nr(%struct.btrfs_fs_info* %18, i64 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @EXTENT_SIZE_PER_ITEM, align 8
  %23 = mul nsw i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %27, %struct.btrfs_trans_handle** %10, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %29 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %30 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %28, i32 %29)
  store %struct.btrfs_space_info* %30, %struct.btrfs_space_info** %9, align 8
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 1
  %33 = call i64 @percpu_counter_sum_positive(i32* %32)
  store i64 %33, i64* %11, align 8
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = call i64 @percpu_counter_sum_positive(i32* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %44 = icmp ne %struct.btrfs_trans_handle* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %154

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %50, i64 %51, i32 0, i64 -1)
  br label %53

53:                                               ; preds = %49, %46
  br label %154

54:                                               ; preds = %39, %4
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %54
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %147, %59
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 3
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ false, %63 ], [ %68, %66 ]
  br i1 %70, label %71, label %154

71:                                               ; preds = %69
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @min(i64 %72, i64 %73)
  %75 = load i64, i64* @PAGE_SHIFT, align 8
  %76 = lshr i64 %74, %75
  store i64 %76, i64* %16, align 8
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @btrfs_writeback_inodes_sb_nr(%struct.btrfs_fs_info* %77, i64 %78, i64 %79)
  %81 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %81, i32 0, i32 2
  %83 = call i32 @atomic_read(i32* %82)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %71
  br label %109

88:                                               ; preds = %71
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %16, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i64 0, i64* %13, align 8
  br label %97

93:                                               ; preds = %88
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 2
  %103 = call i32 @atomic_read(i32* %102)
  %104 = load i64, i64* %13, align 8
  %105 = trunc i64 %104 to i32
  %106 = icmp sle i32 %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @wait_event(i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %97, %87
  %110 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %111 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %110, i32 0, i32 0
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %114 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %113, i32 0, i32 2
  %115 = call i64 @list_empty(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %119 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %118, i32 0, i32 1
  %120 = call i64 @list_empty(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %124 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  br label %154

126:                                              ; preds = %117, %109
  %127 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %128 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %136 = icmp ne %struct.btrfs_trans_handle* %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %138, i64 %139, i32 0, i64 -1)
  br label %147

141:                                              ; preds = %134, %126
  %142 = call i64 @schedule_timeout_killable(i32 1)
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %154

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %137
  %148 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %149 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %148, i32 0, i32 1
  %150 = call i64 @percpu_counter_sum_positive(i32* %149)
  store i64 %150, i64* %11, align 8
  %151 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %152 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %151, i32 0, i32 0
  %153 = call i64 @percpu_counter_sum_positive(i32* %152)
  store i64 %153, i64* %12, align 8
  br label %60

154:                                              ; preds = %45, %53, %145, %122, %69
  ret void
}

declare dso_local i64 @calc_reclaim_items_nr(%struct.btrfs_fs_info*, i64) #1

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @percpu_counter_sum_positive(i32*) #1

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i64, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @btrfs_writeback_inodes_sb_nr(%struct.btrfs_fs_info*, i64, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @schedule_timeout_killable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
