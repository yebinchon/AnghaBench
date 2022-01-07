; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_trans_release_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_trans_release_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32*, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*)* @btrfs_trans_release_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_trans_release_metadata(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca %struct.btrfs_trans_handle*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %2, align 8
  %4 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %4, i32 0, i32 3
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_fs_info* %6, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  %31 = icmp eq i32* %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 0)
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %44 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %47 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %42, i32* %45, i32 %48)
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %51 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %25, %24, %11
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
