; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_bio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_bio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64 }
%struct.scrub_parity = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@btrfs_scrubparity_helper = common dso_local global i32 0, align 4
@scrub_parity_bio_endio_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @scrub_parity_bio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_parity_bio_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.scrub_parity*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.scrub_parity*
  store %struct.scrub_parity* %8, %struct.scrub_parity** %3, align 8
  %9 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %10 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %4, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %20 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %23 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %26 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %29 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bitmap_or(i32 %21, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %18, %1
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = call i32 @bio_put(%struct.bio* %33)
  %35 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %36 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %35, i32 0, i32 0
  %37 = load i32, i32* @btrfs_scrubparity_helper, align 4
  %38 = load i32, i32* @scrub_parity_bio_endio_worker, align 4
  %39 = call i32 @btrfs_init_work(i32* %36, i32 %37, i32 %38, i32* null, i32* null)
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scrub_parity*, %struct.scrub_parity** %3, align 8
  %44 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %43, i32 0, i32 0
  %45 = call i32 @btrfs_queue_work(i32 %42, i32* %44)
  ret void
}

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
