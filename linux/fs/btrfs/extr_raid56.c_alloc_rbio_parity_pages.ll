; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_alloc_rbio_parity_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_alloc_rbio_parity_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, %struct.page**, i32 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*)* @alloc_rbio_parity_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rbio_parity_pages(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  %6 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @rbio_stripe_page_index(%struct.btrfs_raid_bio* %6, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %18, i32 0, i32 1
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %45

27:                                               ; preds = %17
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = load i32, i32* @__GFP_HIGHMEM, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.page* @alloc_page(i32 %30)
  store %struct.page* %31, %struct.page** %5, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %39, i32 0, i32 1
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  store %struct.page* %38, %struct.page** %44, align 8
  br label %45

45:                                               ; preds = %37, %26
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %11

48:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @rbio_stripe_page_index(%struct.btrfs_raid_bio*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
