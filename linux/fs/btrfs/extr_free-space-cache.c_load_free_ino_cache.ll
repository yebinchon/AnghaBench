; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_load_free_ino_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_load_free_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__, i32, %struct.btrfs_free_space_ctl* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to load free ino cache for root %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_free_ino_cache(%struct.btrfs_fs_info* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 2
  %13 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %12, align 8
  store %struct.btrfs_free_space_ctl* %13, %struct.btrfs_free_space_ctl** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 1
  %16 = call i64 @btrfs_root_generation(i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %18 = load i32, i32* @INODE_MAP_CACHE, align 4
  %19 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = call i64 @btrfs_fs_closing(%struct.btrfs_fs_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %71

27:                                               ; preds = %22
  %28 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %28, %struct.btrfs_path** %7, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %30 = icmp ne %struct.btrfs_path* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %27
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %35 = call %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root* %33, %struct.btrfs_path* %34)
  store %struct.inode* %35, %struct.inode** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call i64 @IS_ERR(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %67

40:                                               ; preds = %32
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %64

48:                                               ; preds = %40
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %53 = call i32 @__load_free_space_cache(%struct.btrfs_root* %49, %struct.inode* %50, %struct.btrfs_free_space_ctl* %51, %struct.btrfs_path* %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @btrfs_err(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @iput(%struct.inode* %65)
  br label %67

67:                                               ; preds = %64, %39
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %69 = call i32 @btrfs_free_path(%struct.btrfs_path* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %31, %26, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @btrfs_root_generation(i32*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @__load_free_space_cache(%struct.btrfs_root*, %struct.inode*, %struct.btrfs_free_space_ctl*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
