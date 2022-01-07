; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_write_dev_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_write_dev_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32, i32, i32, %struct.bio* }
%struct.bio = type { i32, i32*, i32 }
%struct.request_queue = type { i32 }

@QUEUE_FLAG_WC = common dso_local global i32 0, align 4
@btrfs_end_empty_barrier = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@BTRFS_DEV_STATE_FLUSH_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_device*)* @write_dev_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_dev_flush(%struct.btrfs_device* %0) #0 {
  %2 = alloca %struct.btrfs_device*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.btrfs_device* %0, %struct.btrfs_device** %2, align 8
  %5 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.request_queue* @bdev_get_queue(i32 %7)
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %9, i32 0, i32 3
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %4, align 8
  %12 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 @bio_reset(%struct.bio* %19)
  %21 = load i32, i32* @btrfs_end_empty_barrier, align 4
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bio_set_dev(%struct.bio* %24, i32 %27)
  %29 = load i32, i32* @REQ_OP_WRITE, align 4
  %30 = load i32, i32* @REQ_SYNC, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @REQ_PREFLUSH, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %36, i32 0, i32 1
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %40 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %39, i32 0, i32 1
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = call i32 @btrfsic_submit_bio(%struct.bio* %43)
  %45 = load i32, i32* @BTRFS_DEV_STATE_FLUSH_SENT, align 4
  %46 = load %struct.btrfs_device*, %struct.btrfs_device** %2, align 8
  %47 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_reset(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @btrfsic_submit_bio(%struct.bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
