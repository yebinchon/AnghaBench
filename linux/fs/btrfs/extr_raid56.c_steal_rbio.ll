; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_steal_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_steal_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, %struct.page**, i32 }
%struct.page = type { i32 }

@RBIO_CACHE_READY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*, %struct.btrfs_raid_bio*)* @steal_rbio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steal_rbio(%struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio* %1) #0 {
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store %struct.btrfs_raid_bio* %1, %struct.btrfs_raid_bio** %4, align 8
  %8 = load i32, i32* @RBIO_CACHE_READY_BIT, align 4
  %9 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %9, i32 0, i32 2
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %66

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %63, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %15
  %22 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %22, i32 0, i32 1
  %24 = load %struct.page**, %struct.page*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %26
  %28 = load %struct.page*, %struct.page** %27, align 8
  store %struct.page* %28, %struct.page** %6, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @PageUptodate(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %21
  br label %63

36:                                               ; preds = %31
  %37 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %37, i32 0, i32 1
  %39 = load %struct.page**, %struct.page*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.page*, %struct.page** %39, i64 %41
  %43 = load %struct.page*, %struct.page** %42, align 8
  store %struct.page* %43, %struct.page** %7, align 8
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i32 @__free_page(%struct.page* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %51, i32 0, i32 1
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %55
  store %struct.page* %50, %struct.page** %56, align 8
  %57 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %58 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %57, i32 0, i32 1
  %59 = load %struct.page**, %struct.page*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 %61
  store %struct.page* null, %struct.page** %62, align 8
  br label %63

63:                                               ; preds = %49, %35
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %15

66:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
