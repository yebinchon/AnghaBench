; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_remap_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_remap_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_device = type { i32 }
%struct.btrfs_bio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.btrfs_device* }

@BTRFS_MAP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i64, i64, i64*, %struct.btrfs_device**, i32*)* @scrub_remap_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_remap_extent(%struct.btrfs_fs_info* %0, i64 %1, i64 %2, i64* %3, %struct.btrfs_device** %4, i32* %5) #0 {
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.btrfs_device**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.btrfs_bio*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.btrfs_device** %4, %struct.btrfs_device*** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %14, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %18 = load i32, i32* @BTRFS_MAP_READ, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @btrfs_map_block(%struct.btrfs_fs_info* %17, i32 %18, i64 %19, i64* %13, %struct.btrfs_bio** %14, i32 0)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %6
  %24 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %25 = icmp ne %struct.btrfs_bio* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %32 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.btrfs_device*, %struct.btrfs_device** %35, align 8
  %37 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30, %26, %23, %6
  %41 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %42 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %41)
  br label %64

43:                                               ; preds = %30
  %44 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %45 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %10, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %52 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %56 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.btrfs_device*, %struct.btrfs_device** %59, align 8
  %61 = load %struct.btrfs_device**, %struct.btrfs_device*** %11, align 8
  store %struct.btrfs_device* %60, %struct.btrfs_device** %61, align 8
  %62 = load %struct.btrfs_bio*, %struct.btrfs_bio** %14, align 8
  %63 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %62)
  br label %64

64:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @btrfs_map_block(%struct.btrfs_fs_info*, i32, i64, i64*, %struct.btrfs_bio**, i32) #1

declare dso_local i32 @btrfs_put_bbio(%struct.btrfs_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
