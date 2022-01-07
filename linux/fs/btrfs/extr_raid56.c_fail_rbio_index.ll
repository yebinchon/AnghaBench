; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_fail_rbio_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_fail_rbio_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*, i32)* @fail_rbio_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fail_rbio_index(%struct.btrfs_raid_bio* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  br label %52

23:                                               ; preds = %16
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %25 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %32, i32 0, i32 3
  %34 = call i32 @atomic_inc(i32* %33)
  br label %51

35:                                               ; preds = %23
  %36 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %44, i32 0, i32 3
  %46 = call i32 @atomic_inc(i32* %45)
  br label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %54 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %53, i32 0, i32 2
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
