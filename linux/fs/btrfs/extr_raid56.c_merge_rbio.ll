; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_merge_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_merge_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*, %struct.btrfs_raid_bio*)* @merge_rbio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_rbio(%struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio* %1) #0 {
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store %struct.btrfs_raid_bio* %1, %struct.btrfs_raid_bio** %4, align 8
  %5 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %5, i32 0, i32 0
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %7, i32 0, i32 0
  %9 = call i32 @bio_list_merge(i32* %6, i32* %8)
  %10 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %24, i32 0, i32 0
  %26 = call i32 @bio_list_init(i32* %25)
  ret void
}

declare dso_local i32 @bio_list_merge(i32*, i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
