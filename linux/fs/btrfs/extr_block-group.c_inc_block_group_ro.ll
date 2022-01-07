; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_inc_block_group_ro.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_inc_block_group_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64, i64, i64, %struct.btrfs_space_info*, i32, %struct.TYPE_2__, i32, i32, i64, i32 }
%struct.btrfs_space_info = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i64 0, align 8
@ENOSPC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to make block group %llu ro\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"sinfo_used=%llu bg_num_bytes=%llu min_allocable=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32)* @inc_block_group_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inc_block_group_ro(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %10, i32 0, i32 3
  %12 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %11, align 8
  store %struct.btrfs_space_info* %12, %struct.btrfs_space_info** %5, align 8
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %19 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @SZ_1M, align 8
  store i64 %27, i64* %8, align 8
  br label %29

28:                                               ; preds = %23, %2
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 6
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  store i32 0, i32* %9, align 4
  br label %95

45:                                               ; preds = %29
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %55 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %62, i32 0, i32 9
  %64 = call i64 @btrfs_block_group_used(i32* %63)
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* %6, align 8
  %66 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %67 = call i64 @btrfs_space_info_used(%struct.btrfs_space_info* %66, i32 1)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %45
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %80 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %86 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %90 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %89, i32 0, i32 7
  %91 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %91, i32 0, i32 3
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %77, %45
  br label %95

95:                                               ; preds = %94, %40
  %96 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %97 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %96, i32 0, i32 6
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %100 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %99, i32 0, i32 2
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %95
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %108 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ENOSPC_DEBUG, align 4
  %111 = call i64 @btrfs_test_opt(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %106
  %114 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %115 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %118 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = call i32 (i32, i8*, i64, ...) @btrfs_info(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %121)
  %123 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %124 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 (i32, i8*, i64, ...) @btrfs_info(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %126, i64 %127, i64 %128)
  %130 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %131 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %134 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %133, i32 0, i32 3
  %135 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %134, align 8
  %136 = call i32 @btrfs_dump_space_info(i32 %132, %struct.btrfs_space_info* %135, i32 0, i32 0)
  br label %137

137:                                              ; preds = %113, %106, %95
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i64 @btrfs_space_info_used(%struct.btrfs_space_info*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_test_opt(i32, i32) #1

declare dso_local i32 @btrfs_info(i32, i8*, i64, ...) #1

declare dso_local i32 @btrfs_dump_space_info(i32, %struct.btrfs_space_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
