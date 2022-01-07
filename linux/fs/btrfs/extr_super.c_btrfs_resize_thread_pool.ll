; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_resize_thread_pool.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_resize_thread_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"resize thread pool %d -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i64, i64)* @btrfs_resize_thread_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_resize_thread_pool(%struct.btrfs_fs_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %79

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 12
  store i64 %12, i64* %14, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @btrfs_info(%struct.btrfs_fs_info* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @btrfs_workqueue_set_max(i32 %21, i64 %22)
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @btrfs_workqueue_set_max(i32 %26, i64 %27)
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @btrfs_workqueue_set_max(i32 %31, i64 %32)
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @btrfs_workqueue_set_max(i32 %36, i64 %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @btrfs_workqueue_set_max(i32 %41, i64 %42)
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @btrfs_workqueue_set_max(i32 %46, i64 %47)
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @btrfs_workqueue_set_max(i32 %51, i64 %52)
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @btrfs_workqueue_set_max(i32 %56, i64 %57)
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @btrfs_workqueue_set_max(i32 %61, i64 %62)
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @btrfs_workqueue_set_max(i32 %66, i64 %67)
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @btrfs_workqueue_set_max(i32 %71, i64 %72)
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %75 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @btrfs_workqueue_set_max(i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_workqueue_set_max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
