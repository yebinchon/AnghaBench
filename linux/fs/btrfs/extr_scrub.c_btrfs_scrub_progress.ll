; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_btrfs_scrub_progress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_btrfs_scrub_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_scrub_progress = type { i32 }
%struct.btrfs_device = type { %struct.scrub_ctx* }
%struct.scrub_ctx = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_scrub_progress(%struct.btrfs_fs_info* %0, i32 %1, %struct.btrfs_scrub_progress* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_scrub_progress*, align 8
  %7 = alloca %struct.btrfs_device*, align 8
  %8 = alloca %struct.scrub_ctx*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_scrub_progress* %2, %struct.btrfs_scrub_progress** %6, align 8
  store %struct.scrub_ctx* null, %struct.scrub_ctx** %8, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.btrfs_device* @btrfs_find_device(%struct.TYPE_2__* %16, i32 %17, i32* null, i32* null, i32 1)
  store %struct.btrfs_device* %18, %struct.btrfs_device** %7, align 8
  %19 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %20 = icmp ne %struct.btrfs_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %22, i32 0, i32 0
  %24 = load %struct.scrub_ctx*, %struct.scrub_ctx** %23, align 8
  store %struct.scrub_ctx* %24, %struct.scrub_ctx** %8, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.scrub_ctx*, %struct.scrub_ctx** %8, align 8
  %27 = icmp ne %struct.scrub_ctx* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.btrfs_scrub_progress*, %struct.btrfs_scrub_progress** %6, align 8
  %30 = load %struct.scrub_ctx*, %struct.scrub_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %30, i32 0, i32 0
  %32 = call i32 @memcpy(%struct.btrfs_scrub_progress* %29, i32* %31, i32 4)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %40 = icmp ne %struct.btrfs_device* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.scrub_ctx*, %struct.scrub_ctx** %8, align 8
  %43 = icmp ne %struct.scrub_ctx* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOTCONN, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_device* @btrfs_find_device(%struct.TYPE_2__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_scrub_progress*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
