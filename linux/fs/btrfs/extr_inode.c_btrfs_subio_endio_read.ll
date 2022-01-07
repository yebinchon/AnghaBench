; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_subio_endio_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_subio_endio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_io_bio = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.btrfs_io_bio*, i32)* @btrfs_subio_endio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_subio_endio_read(%struct.inode* %0, %struct.btrfs_io_bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.btrfs_io_bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.btrfs_io_bio* %1, %struct.btrfs_io_bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %6, align 8
  %24 = call i32 @__btrfs_correct_data_nocsum(%struct.inode* %22, %struct.btrfs_io_bio* %23)
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @__btrfs_subio_endio_read(%struct.inode* %28, %struct.btrfs_io_bio* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %25, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__btrfs_correct_data_nocsum(%struct.inode*, %struct.btrfs_io_bio*) #1

declare dso_local i32 @__btrfs_subio_endio_read(%struct.inode*, %struct.btrfs_io_bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
