; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_parity_submit_scrub_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_parity_submit_scrub_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32 }

@scrub_parity_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid56_parity_submit_scrub_rbio(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  %3 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %4 = call i32 @lock_stripe_add(%struct.btrfs_raid_bio* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %8 = load i32, i32* @scrub_parity_work, align 4
  %9 = call i32 @start_async_work(%struct.btrfs_raid_bio* %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @lock_stripe_add(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @start_async_work(%struct.btrfs_raid_bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
