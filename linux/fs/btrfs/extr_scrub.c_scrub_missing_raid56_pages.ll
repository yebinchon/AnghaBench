; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_missing_raid56_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_missing_raid56_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, i32, %struct.scrub_page**, %struct.scrub_ctx* }
%struct.scrub_page = type { i32, i32 }
%struct.scrub_ctx = type { i32, %struct.TYPE_4__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_bio = type { i32, i32 }
%struct.bio = type { i32, %struct.scrub_block*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_raid_bio = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BTRFS_MAP_GET_READ_MIRRORS = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID56_MASK = common dso_local global i32 0, align 4
@scrub_missing_raid56_end_io = common dso_local global i32 0, align 4
@btrfs_scrub_helper = common dso_local global i32 0, align 4
@scrub_missing_raid56_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_missing_raid56_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_missing_raid56_pages(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  %3 = alloca %struct.scrub_ctx*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.btrfs_raid_bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scrub_page*, align 8
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  %13 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %14 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %13, i32 0, i32 3
  %15 = load %struct.scrub_ctx*, %struct.scrub_ctx** %14, align 8
  store %struct.scrub_ctx* %15, %struct.scrub_ctx** %3, align 8
  %16 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %16, i32 0, i32 3
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %4, align 8
  %19 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %20 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %25 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %24, i32 0, i32 2
  %26 = load %struct.scrub_page**, %struct.scrub_page*** %25, align 8
  %27 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %26, i64 0
  %28 = load %struct.scrub_page*, %struct.scrub_page** %27, align 8
  %29 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %7, align 8
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %32 = call i32 @btrfs_bio_counter_inc_blocked(%struct.btrfs_fs_info* %31)
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %34 = load i32, i32* @BTRFS_MAP_GET_READ_MIRRORS, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @btrfs_map_sblock(%struct.btrfs_fs_info* %33, i32 %34, i32 %35, i32* %5, %struct.btrfs_bio** %7)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %1
  %40 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %41 = icmp ne %struct.btrfs_bio* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %44 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %39, %1
  br label %129

48:                                               ; preds = %42
  %49 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID56_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %53, %48
  %62 = phi i1 [ true, %48 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %129

67:                                               ; preds = %61
  %68 = call %struct.bio* @btrfs_io_bio_alloc(i32 0)
  store %struct.bio* %68, %struct.bio** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 9
  %71 = load %struct.bio*, %struct.bio** %8, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %75 = load %struct.bio*, %struct.bio** %8, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 1
  store %struct.scrub_block* %74, %struct.scrub_block** %76, align 8
  %77 = load i32, i32* @scrub_missing_raid56_end_io, align 4
  %78 = load %struct.bio*, %struct.bio** %8, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call %struct.btrfs_raid_bio* @raid56_alloc_missing_rbio(%struct.btrfs_fs_info* %80, %struct.bio* %81, %struct.btrfs_bio* %82, i32 %83)
  store %struct.btrfs_raid_bio* %84, %struct.btrfs_raid_bio** %9, align 8
  %85 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %9, align 8
  %86 = icmp ne %struct.btrfs_raid_bio* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %67
  br label %126

88:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %92 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %97 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %96, i32 0, i32 2
  %98 = load %struct.scrub_page**, %struct.scrub_page*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %98, i64 %100
  %102 = load %struct.scrub_page*, %struct.scrub_page** %101, align 8
  store %struct.scrub_page* %102, %struct.scrub_page** %12, align 8
  %103 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %9, align 8
  %104 = load %struct.scrub_page*, %struct.scrub_page** %12, align 8
  %105 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.scrub_page*, %struct.scrub_page** %12, align 8
  %108 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @raid56_add_scrub_pages(%struct.btrfs_raid_bio* %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %89

114:                                              ; preds = %89
  %115 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %116 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %115, i32 0, i32 1
  %117 = load i32, i32* @btrfs_scrub_helper, align 4
  %118 = load i32, i32* @scrub_missing_raid56_worker, align 4
  %119 = call i32 @btrfs_init_work(i32* %116, i32 %117, i32 %118, i32* null, i32* null)
  %120 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %121 = call i32 @scrub_block_get(%struct.scrub_block* %120)
  %122 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %123 = call i32 @scrub_pending_bio_inc(%struct.scrub_ctx* %122)
  %124 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %9, align 8
  %125 = call i32 @raid56_submit_missing_rbio(%struct.btrfs_raid_bio* %124)
  br label %145

126:                                              ; preds = %87
  %127 = load %struct.bio*, %struct.bio** %8, align 8
  %128 = call i32 @bio_put(%struct.bio* %127)
  br label %129

129:                                              ; preds = %126, %66, %47
  %130 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %131 = call i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info* %130)
  %132 = load %struct.btrfs_bio*, %struct.btrfs_bio** %7, align 8
  %133 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %132)
  %134 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %134, i32 0, i32 0
  %136 = call i32 @spin_lock(i32* %135)
  %137 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.scrub_ctx*, %struct.scrub_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  br label %145

145:                                              ; preds = %129, %114
  ret void
}

declare dso_local i32 @btrfs_bio_counter_inc_blocked(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_map_sblock(%struct.btrfs_fs_info*, i32, i32, i32*, %struct.btrfs_bio**) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local %struct.btrfs_raid_bio* @raid56_alloc_missing_rbio(%struct.btrfs_fs_info*, %struct.bio*, %struct.btrfs_bio*, i32) #1

declare dso_local i32 @raid56_add_scrub_pages(%struct.btrfs_raid_bio*, i32, i32) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scrub_block_get(%struct.scrub_block*) #1

declare dso_local i32 @scrub_pending_bio_inc(%struct.scrub_ctx*) #1

declare dso_local i32 @raid56_submit_missing_rbio(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_put_bbio(%struct.btrfs_bio*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
