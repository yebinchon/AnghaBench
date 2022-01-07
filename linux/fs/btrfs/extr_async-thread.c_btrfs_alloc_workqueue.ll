; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_alloc_workqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_alloc_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workqueue = type { i8*, i8* }
%struct.btrfs_fs_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_workqueue* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_workqueue*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_workqueue*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.btrfs_workqueue* @kzalloc(i32 16, i32 %13)
  store %struct.btrfs_workqueue* %14, %struct.btrfs_workqueue** %12, align 8
  %15 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %16 = icmp ne %struct.btrfs_workqueue* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.btrfs_workqueue* null, %struct.btrfs_workqueue** %6, align 8
  br label %65

18:                                               ; preds = %5
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @WQ_HIGHPRI, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @__btrfs_alloc_workqueue(%struct.btrfs_fs_info* %19, i8* %20, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %29 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %31 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %36 = call i32 @kfree(%struct.btrfs_workqueue* %35)
  store %struct.btrfs_workqueue* null, %struct.btrfs_workqueue** %6, align 8
  br label %65

37:                                               ; preds = %18
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @WQ_HIGHPRI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @__btrfs_alloc_workqueue(%struct.btrfs_fs_info* %43, i8* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %50 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %52 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %42
  %56 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %57 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @__btrfs_destroy_workqueue(i8* %58)
  %60 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  %61 = call i32 @kfree(%struct.btrfs_workqueue* %60)
  store %struct.btrfs_workqueue* null, %struct.btrfs_workqueue** %6, align 8
  br label %65

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %12, align 8
  store %struct.btrfs_workqueue* %64, %struct.btrfs_workqueue** %6, align 8
  br label %65

65:                                               ; preds = %63, %55, %34, %17
  %66 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %6, align 8
  ret %struct.btrfs_workqueue* %66
}

declare dso_local %struct.btrfs_workqueue* @kzalloc(i32, i32) #1

declare dso_local i8* @__btrfs_alloc_workqueue(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_workqueue*) #1

declare dso_local i32 @__btrfs_destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
