; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }

@FEAT_COMPAT = common dso_local global i32 0, align 4
@FEAT_COMPAT_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i32, i32)* @set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_features(%struct.btrfs_fs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_super_block*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %9, align 8
  store %struct.btrfs_super_block* %10, %struct.btrfs_super_block** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FEAT_COMPAT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @btrfs_set_super_compat_flags(%struct.btrfs_super_block* %15, i32 %16)
  br label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FEAT_COMPAT_RO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @btrfs_set_super_compat_ro_flags(%struct.btrfs_super_block* %23, i32 %24)
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @btrfs_set_super_incompat_flags(%struct.btrfs_super_block* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @btrfs_set_super_compat_flags(%struct.btrfs_super_block*, i32) #1

declare dso_local i32 @btrfs_set_super_compat_ro_flags(%struct.btrfs_super_block*, i32) #1

declare dso_local i32 @btrfs_set_super_incompat_flags(%struct.btrfs_super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
