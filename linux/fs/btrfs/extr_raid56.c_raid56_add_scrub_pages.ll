; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_add_scrub_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_add_scrub_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, %struct.page**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid56_add_scrub_pages(%struct.btrfs_raid_bio* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %9, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %29, %37
  %39 = icmp sle i64 %22, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %42, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %56, i32 0, i32 2
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  store %struct.page* %55, %struct.page** %61, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
