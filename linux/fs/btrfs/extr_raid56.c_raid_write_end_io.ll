; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid_write_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid_write_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.btrfs_raid_bio* }
%struct.btrfs_raid_bio = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@BTRFS_RBIO_PARITY_SCRUB = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid_write_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_write_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %7, align 8
  store %struct.btrfs_raid_bio* %8, %struct.btrfs_raid_bio** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call i32 @fail_bio_stripe(%struct.btrfs_raid_bio* %15, %struct.bio* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = call i32 @bio_put(%struct.bio* %19)
  %21 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %21, i32 0, i32 3
  %23 = call i32 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %53

26:                                               ; preds = %18
  %27 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %27, i64* %4, align 8
  %28 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BTRFS_RBIO_PARITY_SCRUB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i32 [ 0, %33 ], [ %39, %34 ]
  store i32 %41, i32* %5, align 4
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 1
  %44 = call i32 @atomic_read(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %25
  ret void
}

declare dso_local i32 @fail_bio_stripe(%struct.btrfs_raid_bio*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
