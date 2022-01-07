; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_flush_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_flush_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_space_info = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

@CHUNK_ALLOC_NO_FORCE = common dso_local global i32 0, align 4
@CHUNK_ALLOC_FORCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32, i32)* @flush_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_space(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_space_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %115 [
    i32 131, label %17
    i32 132, label %17
    i32 134, label %41
    i32 133, label %41
    i32 129, label %50
    i32 130, label %50
    i32 137, label %73
    i32 136, label %73
    i32 128, label %106
    i32 135, label %111
  ]

17:                                               ; preds = %4, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 131
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @calc_reclaim_items_nr(%struct.btrfs_fs_info* %21, i32 %22)
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %11, align 4
  br label %26

25:                                               ; preds = %17
  store i32 -1, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %27)
  store %struct.btrfs_trans_handle* %28, %struct.btrfs_trans_handle** %10, align 8
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %30 = call i32 @IS_ERR(%struct.btrfs_trans_handle* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %33)
  store i32 %34, i32* %12, align 4
  br label %118

35:                                               ; preds = %26
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @btrfs_run_delayed_items_nr(%struct.btrfs_trans_handle* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %40 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %39)
  br label %118

41:                                               ; preds = %4, %4
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 133
  %48 = zext i1 %47 to i32
  %49 = call i32 @shrink_delalloc(%struct.btrfs_fs_info* %42, i32 %44, i32 %45, i32 %48)
  br label %118

50:                                               ; preds = %4, %4
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %52 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %51)
  store %struct.btrfs_trans_handle* %52, %struct.btrfs_trans_handle** %10, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %54 = call i32 @IS_ERR(%struct.btrfs_trans_handle* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %58 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %57)
  store i32 %58, i32* %12, align 4
  br label %118

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 129
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @calc_reclaim_items_nr(%struct.btrfs_fs_info* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle* %68, i32 %69)
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %72 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %71)
  br label %118

73:                                               ; preds = %4, %4
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %75 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %74)
  store %struct.btrfs_trans_handle* %75, %struct.btrfs_trans_handle** %10, align 8
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %77 = call i32 @IS_ERR(%struct.btrfs_trans_handle* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %81 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %80)
  store i32 %81, i32* %12, align 4
  br label %118

82:                                               ; preds = %73
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %85 = call i32 @btrfs_metadata_alloc_profile(%struct.btrfs_fs_info* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 137
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @CHUNK_ALLOC_NO_FORCE, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %83, i32 %85, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %96 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %92
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %118

106:                                              ; preds = %4
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %108 = call i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info* %107)
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %110 = call i32 @btrfs_wait_on_delayed_iputs(%struct.btrfs_fs_info* %109)
  br label %118

111:                                              ; preds = %4
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %113 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %114 = call i32 @may_commit_transaction(%struct.btrfs_fs_info* %112, %struct.btrfs_space_info* %113)
  store i32 %114, i32* %12, align 4
  br label %118

115:                                              ; preds = %4
  %116 = load i32, i32* @ENOSPC, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %111, %106, %105, %79, %67, %56, %41, %35, %32
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %120 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %121 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @trace_btrfs_flush_space(%struct.btrfs_fs_info* %119, i32 %122, i32 %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @calc_reclaim_items_nr(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i32 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_run_delayed_items_nr(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @shrink_delalloc(%struct.btrfs_fs_info*, i32, i32, i32) #1

declare dso_local i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @btrfs_metadata_alloc_profile(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_wait_on_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @may_commit_transaction(%struct.btrfs_fs_info*, %struct.btrfs_space_info*) #1

declare dso_local i32 @trace_btrfs_flush_space(%struct.btrfs_fs_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
