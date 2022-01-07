; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i32, i32, i32, i32, %struct.btrfs_subvolume_writers*, i8*, i8* }
%struct.btrfs_subvolume_writers = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_LAST_FREE_OBJECTID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_fs_root(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_subvolume_writers*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call i8* @kzalloc(i32 1, i32 %6)
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call i8* @kzalloc(i32 1, i32 %10)
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 7
  store i8* %11, i8** %13, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 7
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %18
  %27 = call %struct.btrfs_subvolume_writers* (...) @btrfs_alloc_subvolume_writers()
  store %struct.btrfs_subvolume_writers* %27, %struct.btrfs_subvolume_writers** %5, align 8
  %28 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %5, align 8
  %29 = call i64 @IS_ERR(%struct.btrfs_subvolume_writers* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.btrfs_subvolume_writers* %32)
  store i32 %33, i32* %4, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.btrfs_subvolume_writers*, %struct.btrfs_subvolume_writers** %5, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 5
  store %struct.btrfs_subvolume_writers* %35, %struct.btrfs_subvolume_writers** %37, align 8
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %39 = call i32 @btrfs_init_free_ino_ctl(%struct.btrfs_root* %38)
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 4
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 3
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 2
  %48 = call i32 @get_anon_bdev(i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %77

52:                                               ; preds = %34
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 0
  %59 = call i32 @btrfs_find_highest_objectid(%struct.btrfs_root* %56, i64* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %77

66:                                               ; preds = %52
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %71 = icmp sle i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %2, align 4
  br label %79

77:                                               ; preds = %62, %51, %31, %23
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %66
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.btrfs_subvolume_writers* @btrfs_alloc_subvolume_writers(...) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_subvolume_writers*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_subvolume_writers*) #1

declare dso_local i32 @btrfs_init_free_ino_ctl(%struct.btrfs_root*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_anon_bdev(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_find_highest_objectid(%struct.btrfs_root*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
