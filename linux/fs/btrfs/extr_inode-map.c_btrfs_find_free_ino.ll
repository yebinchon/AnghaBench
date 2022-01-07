; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_find_free_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_find_free_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_CACHE_ERROR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @INODE_MAP_CACHE, align 4
  %10 = call i32 @btrfs_test_opt(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %13, i32* %14)
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %78, %16
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = call i32 @btrfs_find_ino_for_alloc(%struct.btrfs_root* %18)
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %79

25:                                               ; preds = %17
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = call i32 @start_caching(%struct.btrfs_root* %26)
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %25
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTRFS_CACHE_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br label %49

49:                                               ; preds = %42, %36, %25
  %50 = phi i1 [ true, %36 ], [ true, %25 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event(i32 %30, i32 %51)
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %79

68:                                               ; preds = %58, %49
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BTRFS_CACHE_ERROR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %75, i32* %76)
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %68
  br label %17

79:                                               ; preds = %74, %65, %24, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @btrfs_test_opt(i32, i32) #1

declare dso_local i32 @btrfs_find_free_objectid(%struct.btrfs_root*, i32*) #1

declare dso_local i32 @btrfs_find_ino_for_alloc(%struct.btrfs_root*) #1

declare dso_local i32 @start_caching(%struct.btrfs_root*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
