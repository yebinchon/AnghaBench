; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_dev_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_dev_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.block_device = type { i32 }
%struct.btrfs_super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @btrfs_read_dev_super(%struct.block_device* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.btrfs_super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %44, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load %struct.block_device*, %struct.block_device** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @btrfs_read_dev_one_super(%struct.block_device* %16, i32 %17, %struct.buffer_head** %4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.btrfs_super_block*
  store %struct.btrfs_super_block* %26, %struct.btrfs_super_block** %6, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %31 = call i64 @btrfs_super_generation(%struct.btrfs_super_block* %30)
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %22
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = call i32 @brelse(%struct.buffer_head* %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %5, align 8
  %38 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %39 = call i64 @btrfs_super_generation(%struct.btrfs_super_block* %38)
  store i64 %39, i64* %8, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = icmp ne %struct.buffer_head* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.buffer_head* @ERR_PTR(i32 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %2, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %54, %struct.buffer_head** %2, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %56
}

declare dso_local i32 @btrfs_read_dev_one_super(%struct.block_device*, i32, %struct.buffer_head**) #1

declare dso_local i64 @btrfs_super_generation(%struct.btrfs_super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
