; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_dev_one_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_dev_one_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.buffer_head = type { i64 }
%struct.btrfs_super_block = type { i32 }

@BTRFS_SUPER_INFO_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_BDEV_BLOCKSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BTRFS_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_read_dev_one_super(%struct.block_device* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.btrfs_super_block*, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @btrfs_sb_offset(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.block_device*, %struct.block_device** %5, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @i_size_read(i32 %19)
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.block_device*, %struct.block_device** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %31 = call %struct.buffer_head* @__bread(%struct.block_device* %26, i32 %29, i64 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %8, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %25
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.btrfs_super_block*
  store %struct.btrfs_super_block* %41, %struct.btrfs_super_block** %9, align 8
  %42 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %9, align 8
  %43 = call i32 @btrfs_super_bytenr(%struct.btrfs_super_block* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %9, align 8
  %48 = call i64 @btrfs_super_magic(%struct.btrfs_super_block* %47)
  %49 = load i64, i64* @BTRFS_MAGIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %37
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %57, %struct.buffer_head** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %51, %34, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @btrfs_sb_offset(i32) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local %struct.buffer_head* @__bread(%struct.block_device*, i32, i64) #1

declare dso_local i32 @btrfs_super_bytenr(%struct.btrfs_super_block*) #1

declare dso_local i64 @btrfs_super_magic(%struct.btrfs_super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
