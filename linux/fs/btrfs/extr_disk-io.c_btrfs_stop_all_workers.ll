; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_stop_all_workers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_stop_all_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @btrfs_stop_all_workers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_stop_all_workers(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %3 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %3, i32 0, i32 16
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @btrfs_destroy_workqueue(i32 %5)
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 15
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @btrfs_destroy_workqueue(i32 %9)
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @btrfs_destroy_workqueue(i32 %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @btrfs_destroy_workqueue(i32 %17)
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @btrfs_destroy_workqueue(i32 %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @btrfs_destroy_workqueue(i32 %25)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @btrfs_destroy_workqueue(i32 %29)
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @btrfs_destroy_workqueue(i32 %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @btrfs_destroy_workqueue(i32 %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @btrfs_destroy_workqueue(i32 %41)
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @btrfs_destroy_workqueue(i32 %45)
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @btrfs_destroy_workqueue(i32 %49)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @btrfs_destroy_workqueue(i32 %53)
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @btrfs_destroy_workqueue(i32 %57)
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @btrfs_destroy_workqueue(i32 %61)
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @btrfs_destroy_workqueue(i32 %65)
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @btrfs_destroy_workqueue(i32 %69)
  ret void
}

declare dso_local i32 @btrfs_destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
