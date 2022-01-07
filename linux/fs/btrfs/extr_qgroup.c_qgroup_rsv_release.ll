; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rsv_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rsv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_qgroup = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_qgroup*, i64, i32)* @qgroup_rsv_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qgroup_rsv_release(%struct.btrfs_fs_info* %0, %struct.btrfs_qgroup* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_qgroup*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_qgroup* %1, %struct.btrfs_qgroup** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %10 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @trace_qgroup_update_reserve(%struct.btrfs_fs_info* %9, %struct.btrfs_qgroup* %10, i32 %13, i32 %14)
  %16 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %6, align 8
  %29 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %27
  store i64 %36, i64* %34, align 8
  br label %45

37:                                               ; preds = %4
  %38 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %37, %26
  ret void
}

declare dso_local i32 @trace_qgroup_update_reserve(%struct.btrfs_fs_info*, %struct.btrfs_qgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
