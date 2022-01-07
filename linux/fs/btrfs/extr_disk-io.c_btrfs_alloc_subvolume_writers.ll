; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_alloc_subvolume_writers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_alloc_subvolume_writers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_subvolume_writers = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_subvolume_writers* ()* @btrfs_alloc_subvolume_writers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_subvolume_writers* @btrfs_alloc_subvolume_writers() #0 {
  %1 = alloca %struct.btrfs_subvolume_writers*, align 8
  %2 = alloca %struct.btrfs_subvolume_writers*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.btrfs_subvolume_writers* @kmalloc(i32 8, i32 %4)
  store %struct.btrfs_subvolume_writers* %5, %struct.btrfs_subvolume_writers** %2, align 8
  %6 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %2, align 8
  %7 = icmp ne %struct.btrfs_subvolume_writers* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.btrfs_subvolume_writers* @ERR_PTR(i32 %10)
  store %struct.btrfs_subvolume_writers* %11, %struct.btrfs_subvolume_writers** %1, align 8
  br label %29

12:                                               ; preds = %0
  %13 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_subvolume_writers, %struct.btrfs_subvolume_writers* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call i32 @percpu_counter_init(i32* %14, i32 0, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %2, align 8
  %21 = call i32 @kfree(%struct.btrfs_subvolume_writers* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.btrfs_subvolume_writers* @ERR_PTR(i32 %22)
  store %struct.btrfs_subvolume_writers* %23, %struct.btrfs_subvolume_writers** %1, align 8
  br label %29

24:                                               ; preds = %12
  %25 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_subvolume_writers, %struct.btrfs_subvolume_writers* %25, i32 0, i32 0
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %2, align 8
  store %struct.btrfs_subvolume_writers* %28, %struct.btrfs_subvolume_writers** %1, align 8
  br label %29

29:                                               ; preds = %24, %19, %8
  %30 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %1, align 8
  ret %struct.btrfs_subvolume_writers* %30
}

declare dso_local %struct.btrfs_subvolume_writers* @kmalloc(i32, i32) #1

declare dso_local %struct.btrfs_subvolume_writers* @ERR_PTR(i32) #1

declare dso_local i32 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_subvolume_writers*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
