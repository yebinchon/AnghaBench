; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_find_bio_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_find_bio_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.btrfs_bio_stripe* }
%struct.btrfs_bio_stripe = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.bio = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*, %struct.bio*)* @find_bio_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bio_stripe(%struct.btrfs_raid_bio* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_bio_stripe*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 9
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %81, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %16
  %25 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %29, i64 %31
  store %struct.btrfs_bio_stripe* %32, %struct.btrfs_bio_stripe** %9, align 8
  %33 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %9, align 8
  %34 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %39
  %48 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %9, align 8
  %49 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %9, align 8
  %59 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %57, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %54
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %9, align 8
  %71 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %69, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %66, %54, %47, %39, %24
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %16

84:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
