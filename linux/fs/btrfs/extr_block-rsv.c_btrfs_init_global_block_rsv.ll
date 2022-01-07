; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_global_block_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_btrfs_init_global_block_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.btrfs_space_info* }
%struct.btrfs_space_info = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.btrfs_space_info* }
%struct.TYPE_24__ = type { %struct.TYPE_13__* }
%struct.TYPE_23__ = type { %struct.TYPE_13__* }
%struct.TYPE_22__ = type { %struct.TYPE_13__* }
%struct.TYPE_21__ = type { %struct.btrfs_space_info* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.btrfs_space_info* }
%struct.TYPE_17__ = type { %struct.btrfs_space_info* }
%struct.TYPE_16__ = type { %struct.btrfs_space_info* }

@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_global_block_rsv(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_space_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %4 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %5 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %6 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %4, i32 %5)
  store %struct.btrfs_space_info* %6, %struct.btrfs_space_info** %3, align 8
  %7 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store %struct.btrfs_space_info* %7, %struct.btrfs_space_info** %10, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %12 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %13 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %11, i32 %12)
  store %struct.btrfs_space_info* %13, %struct.btrfs_space_info** %3, align 8
  %14 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.btrfs_space_info* %14, %struct.btrfs_space_info** %17, align 8
  %18 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store %struct.btrfs_space_info* %18, %struct.btrfs_space_info** %21, align 8
  %22 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store %struct.btrfs_space_info* %22, %struct.btrfs_space_info** %25, align 8
  %26 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store %struct.btrfs_space_info* %26, %struct.btrfs_space_info** %29, align 8
  %30 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  store %struct.btrfs_space_info* %30, %struct.btrfs_space_info** %33, align 8
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 6
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %39, align 8
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 6
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 7
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %45, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 2
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 5
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %51, align 8
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 2
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %57, align 8
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = icmp ne %struct.TYPE_24__* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %1
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 2
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %66 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %65, i32 0, i32 3
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %68, align 8
  br label %69

69:                                               ; preds = %62, %1
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 0
  %72 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %73 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %75, align 8
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %77 = call i32 @btrfs_update_global_block_rsv(%struct.btrfs_fs_info* %76)
  ret void
}

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_update_global_block_rsv(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
