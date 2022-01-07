; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_parity_alloc_scrub_rbio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_parity_alloc_scrub_rbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.btrfs_fs_info = type { i64 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_device* }
%struct.btrfs_device = type { i32 }

@BTRFS_RBIO_PARITY_SCRUB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_raid_bio* @raid56_parity_alloc_scrub_rbio(%struct.btrfs_fs_info* %0, %struct.bio* %1, %struct.btrfs_bio* %2, i32 %3, %struct.btrfs_device* %4, i64* %5, i32 %6) #0 {
  %8 = alloca %struct.btrfs_raid_bio*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.btrfs_bio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_device*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_raid_bio*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %9, align 8
  store %struct.bio* %1, %struct.bio** %10, align 8
  store %struct.btrfs_bio* %2, %struct.btrfs_bio** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.btrfs_device* %4, %struct.btrfs_device** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %19 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call %struct.btrfs_raid_bio* @alloc_rbio(%struct.btrfs_fs_info* %18, %struct.btrfs_bio* %19, i32 %20)
  store %struct.btrfs_raid_bio* %21, %struct.btrfs_raid_bio** %16, align 8
  %22 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %23 = call i64 @IS_ERR(%struct.btrfs_raid_bio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store %struct.btrfs_raid_bio* null, %struct.btrfs_raid_bio** %8, align 8
  br label %101

26:                                               ; preds = %7
  %27 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %28 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %27, i32 0, i32 7
  %29 = load %struct.bio*, %struct.bio** %10, align 8
  %30 = call i32 @bio_list_add(i32* %28, %struct.bio* %29)
  %31 = load %struct.bio*, %struct.bio** %10, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @BTRFS_RBIO_PARITY_SCRUB, align 4
  %40 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %41 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %67, %26
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %48 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %53 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.btrfs_device*, %struct.btrfs_device** %58, align 8
  %60 = load %struct.btrfs_device*, %struct.btrfs_device** %13, align 8
  %61 = icmp eq %struct.btrfs_device* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %65 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %45

70:                                               ; preds = %62, %45
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %73 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %79 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %86 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %93 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i64*, i64** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @bitmap_copy(i32 %94, i64* %95, i32 %96)
  %98 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  %99 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %98, i32 0, i32 4
  store i32 1, i32* %99, align 4
  %100 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %16, align 8
  store %struct.btrfs_raid_bio* %100, %struct.btrfs_raid_bio** %8, align 8
  br label %101

101:                                              ; preds = %70, %25
  %102 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %8, align 8
  ret %struct.btrfs_raid_bio* %102
}

declare dso_local %struct.btrfs_raid_bio* @alloc_rbio(%struct.btrfs_fs_info*, %struct.btrfs_bio*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bitmap_copy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
