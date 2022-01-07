; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid_recover_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid_recover_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.btrfs_raid_bio* }
%struct.btrfs_raid_bio = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid_recover_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_recover_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  store %struct.btrfs_raid_bio* %6, %struct.btrfs_raid_bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = call i32 @fail_bio_stripe(%struct.btrfs_raid_bio* %12, %struct.bio* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call i32 @set_bio_pages_uptodate(%struct.bio* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = call i32 @bio_put(%struct.bio* %19)
  %21 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %21, i32 0, i32 2
  %23 = call i32 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %38 = load i32, i32* @BLK_STS_IOERR, align 4
  %39 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %37, i32 %38)
  br label %43

40:                                               ; preds = %26
  %41 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %42 = call i32 @__raid_recover_end_io(%struct.btrfs_raid_bio* %41)
  br label %43

43:                                               ; preds = %25, %40, %36
  ret void
}

declare dso_local i32 @fail_bio_stripe(%struct.btrfs_raid_bio*, %struct.bio*) #1

declare dso_local i32 @set_bio_pages_uptodate(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @__raid_recover_end_io(%struct.btrfs_raid_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
