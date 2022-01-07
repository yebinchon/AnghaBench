; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h___btrfs_set_fs_incompat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h___btrfs_set_fs_incompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"setting incompat feature flag for %s (0x%llx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i32, i8*)* @__btrfs_set_fs_incompat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__btrfs_set_fs_incompat(%struct.btrfs_fs_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.btrfs_super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 1
  %11 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %10, align 8
  store %struct.btrfs_super_block* %11, %struct.btrfs_super_block** %7, align 8
  %12 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %13 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %3
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %23 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @btrfs_set_super_incompat_flags(%struct.btrfs_super_block* %32, i32 %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @btrfs_info(%struct.btrfs_fs_info* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %18
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_set_super_incompat_flags(%struct.btrfs_super_block*, i32) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
