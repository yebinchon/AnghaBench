; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_check_and_repair.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_check_and_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_parity = type { i32, i32, i32, i32, i32, i64, %struct.scrub_ctx* }
%struct.scrub_ctx = type { i32, %struct.TYPE_4__, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.bio = type { i32, %struct.scrub_parity*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_raid_bio = type { i32 }
%struct.btrfs_bio = type { i32 }

@BTRFS_MAP_WRITE = common dso_local global i32 0, align 4
@scrub_parity_bio_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_parity*)* @scrub_parity_check_and_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_parity_check_and_repair(%struct.scrub_parity* %0) #0 {
  %2 = alloca %struct.scrub_parity*, align 8
  %3 = alloca %struct.scrub_ctx*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.btrfs_raid_bio*, align 8
  %7 = alloca %struct.btrfs_bio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scrub_parity* %0, %struct.scrub_parity** %2, align 8
  %10 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %11 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %10, i32 0, i32 6
  %12 = load %struct.scrub_ctx*, %struct.scrub_ctx** %11, align 8
  store %struct.scrub_ctx* %12, %struct.scrub_ctx** %3, align 8
  %13 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %13, i32 0, i32 2
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %7, align 8
  %16 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %17 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %20 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %23 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %26 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bitmap_andnot(i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %128

31:                                               ; preds = %1
  %32 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %33 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %36 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %8, align 8
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %41 = call i32 @btrfs_bio_counter_inc_blocked(%struct.btrfs_fs_info* %40)
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %43 = load i32, i32* @BTRFS_MAP_WRITE, align 4
  %44 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %45 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @btrfs_map_sblock(%struct.btrfs_fs_info* %42, i32 %43, i32 %46, i64* %8, %struct.btrfs_bio** %7)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %31
  %51 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %52 = icmp ne %struct.btrfs_bio* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %50, %31
  br label %99

59:                                               ; preds = %53
  %60 = call %struct.bio* @btrfs_io_bio_alloc(i32 0)
  store %struct.bio* %60, %struct.bio** %5, align 8
  %61 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %62 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 9
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  store %struct.scrub_parity* %68, %struct.scrub_parity** %70, align 8
  %71 = load i32, i32* @scrub_parity_bio_endio, align 4
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %79 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %82 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %85 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.btrfs_raid_bio* @raid56_parity_alloc_scrub_rbio(%struct.btrfs_fs_info* %74, %struct.bio* %75, %struct.btrfs_bio* %76, i64 %77, i32 %80, i32 %83, i32 %86)
  store %struct.btrfs_raid_bio* %87, %struct.btrfs_raid_bio** %6, align 8
  %88 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %89 = icmp ne %struct.btrfs_raid_bio* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %59
  br label %96

91:                                               ; preds = %59
  %92 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %93 = call i32 @scrub_pending_bio_inc(%struct.scrub_ctx* %92)
  %94 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %6, align 8
  %95 = call i32 @raid56_parity_submit_scrub_rbio(%struct.btrfs_raid_bio* %94)
  br label %131

96:                                               ; preds = %90
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = call i32 @bio_put(%struct.bio* %97)
  br label %99

99:                                               ; preds = %96, %58
  %100 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %101 = call i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info* %100)
  %102 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %103 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %102)
  %104 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %105 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %108 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %111 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %114 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bitmap_or(i32 %106, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %117, i32 0, i32 0
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  br label %128

128:                                              ; preds = %99, %30
  %129 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %130 = call i32 @scrub_free_parity(%struct.scrub_parity* %129)
  br label %131

131:                                              ; preds = %128, %91
  ret void
}

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_bio_counter_inc_blocked(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_map_sblock(%struct.btrfs_fs_info*, i32, i32, i64*, %struct.btrfs_bio**) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local %struct.btrfs_raid_bio* @raid56_parity_alloc_scrub_rbio(%struct.btrfs_fs_info*, %struct.bio*, %struct.btrfs_bio*, i64, i32, i32, i32) #1

declare dso_local i32 @scrub_pending_bio_inc(%struct.scrub_ctx*) #1

declare dso_local i32 @raid56_parity_submit_scrub_rbio(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_put_bbio(%struct.btrfs_bio*) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scrub_free_parity(%struct.scrub_parity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
