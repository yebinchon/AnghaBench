; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i64 }
%struct.cramfs_sb_info = type { i32 }

@CONFIG_CRAMFS_MTD = common dso_local global i32 0, align 4
@CONFIG_CRAMFS_BLOCKDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @cramfs_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cramfs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.cramfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block* %4)
  store %struct.cramfs_sb_info* %5, %struct.cramfs_sb_info** %3, align 8
  %6 = load i32, i32* @CONFIG_CRAMFS_MTD, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %3, align 8
  %16 = icmp ne %struct.cramfs_sb_info* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mtd_unpoint(i64 %25, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %22, %17, %14
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call i32 @kill_mtd_super(%struct.super_block* %31)
  br label %46

33:                                               ; preds = %9, %1
  %34 = load i32, i32* @CONFIG_CRAMFS_BLOCKDEV, align 4
  %35 = call i64 @IS_ENABLED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.super_block*, %struct.super_block** %2, align 8
  %44 = call i32 @kill_block_super(%struct.super_block* %43)
  br label %45

45:                                               ; preds = %42, %37, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %3, align 8
  %48 = call i32 @kfree(%struct.cramfs_sb_info* %47)
  ret void
}

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mtd_unpoint(i64, i32, i32) #1

declare dso_local i32 @kill_mtd_super(%struct.super_block*) #1

declare dso_local i32 @kill_block_super(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.cramfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
