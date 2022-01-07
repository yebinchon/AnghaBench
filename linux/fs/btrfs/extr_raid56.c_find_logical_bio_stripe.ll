; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_find_logical_bio_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_find_logical_bio_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*, %struct.bio*)* @find_logical_bio_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_logical_bio_stripe(%struct.btrfs_raid_bio* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 9
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %34, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %15

48:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
