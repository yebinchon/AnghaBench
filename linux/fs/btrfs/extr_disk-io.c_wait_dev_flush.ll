; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_wait_dev_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_wait_dev_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32, i32, %struct.bio* }
%struct.bio = type { i32 }

@BTRFS_DEV_STATE_FLUSH_SENT = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_device*)* @wait_dev_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_dev_flush(%struct.btrfs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_device*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.btrfs_device* %0, %struct.btrfs_device** %3, align 8
  %5 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %5, i32 0, i32 2
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load i32, i32* @BTRFS_DEV_STATE_FLUSH_SENT, align 4
  %9 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @BTRFS_DEV_STATE_FLUSH_SENT, align 4
  %17 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %20, i32 0, i32 0
  %22 = call i32 @wait_for_completion_io(i32* %21)
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
