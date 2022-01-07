; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_submit_dio_repair_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_submit_dio_repair_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BTRFS_WQ_ENDIO_DIO_REPAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.bio*, i32)* @submit_dio_repair_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @submit_dio_repair_bio(%struct.inode* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %12)
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %8, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = call i64 @bio_op(%struct.bio* %14)
  %16 = load i64, i64* @REQ_OP_WRITE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = load i32, i32* @BTRFS_WQ_ENDIO_DIO_REPAIR, align 4
  %23 = call i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %20, %struct.bio* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @btrfs_map_bio(%struct.btrfs_fs_info* %29, %struct.bio* %30, i32 %31, i32 0)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @btrfs_bio_wq_end_io(%struct.btrfs_fs_info*, %struct.bio*, i32) #1

declare dso_local i64 @btrfs_map_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
