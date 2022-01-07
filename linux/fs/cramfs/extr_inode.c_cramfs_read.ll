; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cramfs_sb_info = type { i64 }

@CONFIG_CRAMFS_MTD = common dso_local global i32 0, align 4
@CONFIG_CRAMFS_BLOCKDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i32, i32)* @cramfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cramfs_read(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cramfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block* %9)
  store %struct.cramfs_sb_info* %10, %struct.cramfs_sb_info** %8, align 8
  %11 = load i32, i32* @CONFIG_CRAMFS_MTD, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %16 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cramfs_direct_read(%struct.super_block* %20, i32 %21, i32 %22)
  store i8* %23, i8** %4, align 8
  br label %34

24:                                               ; preds = %14, %3
  %25 = load i32, i32* @CONFIG_CRAMFS_BLOCKDEV, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @cramfs_blkdev_read(%struct.super_block* %29, i32 %30, i32 %31)
  store i8* %32, i8** %4, align 8
  br label %34

33:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %28, %19
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i8* @cramfs_direct_read(%struct.super_block*, i32, i32) #1

declare dso_local i8* @cramfs_blkdev_read(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
