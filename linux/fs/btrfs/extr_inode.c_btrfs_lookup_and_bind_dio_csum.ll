; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_lookup_and_bind_dio_csum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_lookup_and_bind_dio_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_dio_private = type { i64, %struct.bio* }
%struct.bio = type { i32 }
%struct.btrfs_io_bio = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.btrfs_dio_private*, %struct.bio*, i64)* @btrfs_lookup_and_bind_dio_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_lookup_and_bind_dio_csum(%struct.inode* %0, %struct.btrfs_dio_private* %1, %struct.bio* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_dio_private*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_io_bio*, align 8
  %11 = alloca %struct.btrfs_io_bio*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.btrfs_dio_private* %1, %struct.btrfs_dio_private** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.bio*, %struct.bio** %8, align 8
  %14 = call %struct.btrfs_io_bio* @btrfs_io_bio(%struct.bio* %13)
  store %struct.btrfs_io_bio* %14, %struct.btrfs_io_bio** %10, align 8
  %15 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %15, i32 0, i32 1
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  %18 = call %struct.btrfs_io_bio* @btrfs_io_bio(%struct.bio* %17)
  store %struct.btrfs_io_bio* %18, %struct.btrfs_io_bio** %11, align 8
  %19 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %7, align 8
  %20 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %26, i32 0, i32 1
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @btrfs_lookup_bio_sums_dio(%struct.inode* %25, %struct.bio* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %5, align 8
  br label %63

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.bio*, %struct.bio** %8, align 8
  %38 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %7, align 8
  %39 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  %41 = icmp eq %struct.bio* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i64 0, i64* %5, align 8
  br label %63

43:                                               ; preds = %36
  %44 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = ashr i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %11, align 8
  %57 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %10, align 8
  %62 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %43, %42, %33
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.btrfs_io_bio* @btrfs_io_bio(%struct.bio*) #1

declare dso_local i64 @btrfs_lookup_bio_sums_dio(%struct.inode*, %struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
