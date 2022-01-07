; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_endio_direct_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_endio_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.btrfs_dio_private* }
%struct.btrfs_dio_private = type { i32, %struct.bio*, i64, i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_io_bio = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BTRFS_DIO_ORIG_BIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @btrfs_endio_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_endio_direct_read(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_dio_private*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.btrfs_io_bio*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %9, align 8
  store %struct.btrfs_dio_private* %10, %struct.btrfs_dio_private** %3, align 8
  %11 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %11, i32 0, i32 4
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = call %struct.btrfs_io_bio* @btrfs_io_bio(%struct.bio* %14)
  store %struct.btrfs_io_bio* %15, %struct.btrfs_io_bio** %6, align 8
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BTRFS_DIO_ORIG_BIO_SUBMITTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @btrfs_subio_endio_read(%struct.inode* %26, %struct.btrfs_io_bio* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @unlock_extent(i32* %33, i64 %36, i64 %44)
  %46 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %46, i32 0, i32 1
  %48 = load %struct.bio*, %struct.bio** %47, align 8
  store %struct.bio* %48, %struct.bio** %5, align 8
  %49 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %50 = call i32 @kfree(%struct.btrfs_dio_private* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = call i32 @dio_end_io(%struct.bio* %54)
  %56 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %6, align 8
  %57 = call i32 @btrfs_io_bio_free_csum(%struct.btrfs_io_bio* %56)
  %58 = load %struct.bio*, %struct.bio** %2, align 8
  %59 = call i32 @bio_put(%struct.bio* %58)
  ret void
}

declare dso_local %struct.btrfs_io_bio* @btrfs_io_bio(%struct.bio*) #1

declare dso_local i32 @btrfs_subio_endio_read(%struct.inode*, %struct.btrfs_io_bio*, i32) #1

declare dso_local i32 @unlock_extent(i32*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.btrfs_dio_private*) #1

declare dso_local i32 @dio_end_io(%struct.bio*) #1

declare dso_local i32 @btrfs_io_bio_free_csum(%struct.btrfs_io_bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
