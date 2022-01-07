; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_alloc_rbio_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_alloc_rbio_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, %struct.page** }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*)* @alloc_rbio_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rbio_pages(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 1
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %40

22:                                               ; preds = %12
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = load i32, i32* @__GFP_HIGHMEM, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %5, align 8
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %34, i32 0, i32 1
  %36 = load %struct.page**, %struct.page*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %38
  store %struct.page* %33, %struct.page** %39, align 8
  br label %40

40:                                               ; preds = %32, %21
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %6

43:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
