; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_bio_fits_in_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_bio_fits_in_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_io_geometry = type { i32 }

@EXTENT_BIO_COMPRESSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_bio_fits_in_stripe(%struct.page* %0, i64 %1, %struct.bio* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_io_geometry, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %24)
  store %struct.btrfs_fs_info* %25, %struct.btrfs_fs_info** %11, align 8
  %26 = load %struct.bio*, %struct.bio** %8, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 9
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @EXTENT_BIO_COMPRESSED, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

37:                                               ; preds = %4
  %38 = load %struct.bio*, %struct.bio** %8, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %14, align 4
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %44 = load %struct.bio*, %struct.bio** %8, align 8
  %45 = call i32 @btrfs_op(%struct.bio* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @btrfs_get_io_geometry(%struct.btrfs_fs_info* %43, i32 %45, i32 %46, i32 %47, %struct.btrfs_io_geometry* %16)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %5, align 4
  br label %64

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.btrfs_io_geometry, %struct.btrfs_io_geometry* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %64

63:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62, %51, %36
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @btrfs_get_io_geometry(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_io_geometry*) #1

declare dso_local i32 @btrfs_op(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
