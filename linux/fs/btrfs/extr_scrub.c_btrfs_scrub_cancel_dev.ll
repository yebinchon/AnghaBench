; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_btrfs_scrub_cancel_dev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_btrfs_scrub_cancel_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { %struct.scrub_ctx*, %struct.btrfs_fs_info* }
%struct.scrub_ctx = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_scrub_cancel_dev(%struct.btrfs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_device*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.scrub_ctx*, align 8
  store %struct.btrfs_device* %0, %struct.btrfs_device** %3, align 8
  %6 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %6, i32 0, i32 1
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %4, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %12, i32 0, i32 0
  %14 = load %struct.scrub_ctx*, %struct.scrub_ctx** %13, align 8
  store %struct.scrub_ctx* %14, %struct.scrub_ctx** %5, align 8
  %15 = load %struct.scrub_ctx*, %struct.scrub_ctx** %5, align 8
  %16 = icmp ne %struct.scrub_ctx* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @ENOTCONN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.scrub_ctx*, %struct.scrub_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc(i32* %25)
  br label %27

27:                                               ; preds = %32, %23
  %28 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %28, i32 0, i32 0
  %30 = load %struct.scrub_ctx*, %struct.scrub_ctx** %29, align 8
  %31 = icmp ne %struct.scrub_ctx* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %39, i32 0, i32 0
  %41 = load %struct.scrub_ctx*, %struct.scrub_ctx** %40, align 8
  %42 = icmp eq %struct.scrub_ctx* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event(i32 %38, i32 %43)
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
