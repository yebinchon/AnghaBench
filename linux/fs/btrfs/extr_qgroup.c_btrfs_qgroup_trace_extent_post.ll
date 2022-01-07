; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_extent_post.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_extent_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_qgroup_extent_record = type { %struct.ulist*, i32 }
%struct.ulist = type { i32 }

@BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"error accounting new delayed refs extent (err code: %d), quota inconsistent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info* %0, %struct.btrfs_qgroup_extent_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_qgroup_extent_record*, align 8
  %6 = alloca %struct.ulist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_qgroup_extent_record* %1, %struct.btrfs_qgroup_extent_record** %5, align 8
  %9 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @btrfs_find_all_roots(i32* null, %struct.btrfs_fs_info* %12, i32 %13, i32 0, %struct.ulist** %6, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT, align 4
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %23, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.ulist*, %struct.ulist** %6, align 8
  %28 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %28, i32 0, i32 0
  store %struct.ulist* %27, %struct.ulist** %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @btrfs_find_all_roots(i32*, %struct.btrfs_fs_info*, i32, i32, %struct.ulist**, i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
