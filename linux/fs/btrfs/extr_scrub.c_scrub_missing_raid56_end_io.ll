; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_missing_raid56_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_missing_raid56_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.scrub_block* }
%struct.scrub_block = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @scrub_missing_raid56_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_missing_raid56_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.scrub_block*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  store %struct.scrub_block* %7, %struct.scrub_block** %3, align 8
  %8 = load %struct.scrub_block*, %struct.scrub_block** %3, align 8
  %9 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.scrub_block*, %struct.scrub_block** %3, align 8
  %19 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = call i32 @bio_put(%struct.bio* %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scrub_block*, %struct.scrub_block** %3, align 8
  %27 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %26, i32 0, i32 0
  %28 = call i32 @btrfs_queue_work(i32 %25, i32* %27)
  ret void
}

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
