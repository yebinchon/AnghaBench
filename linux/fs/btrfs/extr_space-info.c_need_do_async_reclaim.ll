; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_need_do_async_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_need_do_async_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i64, i64, i32 }

@BTRFS_FS_STATE_REMOUNTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64, i32)* @need_do_async_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_do_async_reclaim(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_space_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %12 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @div_factor_fine(i32 %13, i32 98)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i64, i64* %10, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

25:                                               ; preds = %4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %27 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @btrfs_calc_reclaim_metadata_size(%struct.btrfs_fs_info* %26, %struct.btrfs_space_info* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %50

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %38 = call i32 @btrfs_fs_closing(%struct.btrfs_fs_info* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @BTRFS_FS_STATE_REMOUNTING, align 4
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %40, %36, %32
  %48 = phi i1 [ false, %36 ], [ false, %32 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %31, %24
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @div_factor_fine(i32, i32) #1

declare dso_local i32 @btrfs_calc_reclaim_metadata_size(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32) #1

declare dso_local i32 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
