; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }

@FEAT_COMPAT = common dso_local global i32 0, align 4
@FEAT_COMPAT_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_features(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_super_block*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 0
  %9 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  store %struct.btrfs_super_block* %9, %struct.btrfs_super_block** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FEAT_COMPAT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %15 = call i32 @btrfs_super_compat_flags(%struct.btrfs_super_block* %14)
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FEAT_COMPAT_RO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %22 = call i32 @btrfs_super_compat_ro_flags(%struct.btrfs_super_block* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %25 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @btrfs_super_compat_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_compat_ro_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
