; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_page_in_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_page_in_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.btrfs_raid_bio = type { i32, %struct.page**, i32, %struct.page** }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.btrfs_raid_bio*, i32, i32, i32)* @page_in_rbio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @page_in_rbio(%struct.btrfs_raid_bio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.btrfs_raid_bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* null, %struct.page** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = mul nsw i32 %12, %17
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %24, i32 0, i32 3
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %11, align 8
  %31 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %4
  %40 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %40, %struct.page** %5, align 8
  br label %49

41:                                               ; preds = %36
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 1
  %44 = load %struct.page**, %struct.page*** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %46
  %48 = load %struct.page*, %struct.page** %47, align 8
  store %struct.page* %48, %struct.page** %5, align 8
  br label %49

49:                                               ; preds = %41, %39
  %50 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %50
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
