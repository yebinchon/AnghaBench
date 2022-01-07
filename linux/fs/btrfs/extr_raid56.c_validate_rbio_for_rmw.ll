; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_validate_rbio_for_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_validate_rbio_for_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*)* @validate_rbio_for_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_rbio_for_rmw(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  %3 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7, %1
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %17 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %25 = call i32 @__raid56_parity_recover(%struct.btrfs_raid_bio* %24)
  br label %29

26:                                               ; preds = %7
  %27 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %28 = call i32 @finish_rmw(%struct.btrfs_raid_bio* %27)
  br label %29

29:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raid56_parity_recover(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @finish_rmw(%struct.btrfs_raid_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
