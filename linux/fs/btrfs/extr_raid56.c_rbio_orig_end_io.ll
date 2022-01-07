; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_orig_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_orig_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i64, i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*, i32)* @rbio_orig_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbio_orig_end_io(%struct.btrfs_raid_bio* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %7, i32 0, i32 0
  %9 = call %struct.bio* @bio_list_get(i32* %8)
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @btrfs_bio_counter_sub(i32 %17, i64 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %24 = call i32 @unlock_stripe(%struct.btrfs_raid_bio* %23)
  %25 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %25, i32 0, i32 0
  %27 = call %struct.bio* @bio_list_get(i32* %26)
  store %struct.bio* %27, %struct.bio** %6, align 8
  %28 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %29 = call i32 @__free_raid_bio(%struct.btrfs_raid_bio* %28)
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @rbio_endio_bio_list(%struct.bio* %30, i32 %31)
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = icmp ne %struct.bio* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rbio_endio_bio_list(%struct.bio* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %22
  ret void
}

declare dso_local %struct.bio* @bio_list_get(i32*) #1

declare dso_local i32 @btrfs_bio_counter_sub(i32, i64) #1

declare dso_local i32 @unlock_stripe(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @__free_raid_bio(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @rbio_endio_bio_list(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
