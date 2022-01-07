; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c___btrfs_block_rsv_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c___btrfs_block_rsv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_block_rsv_release(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.btrfs_block_rsv*, align 8
  %10 = alloca %struct.btrfs_block_rsv*, align 8
  %11 = alloca %struct.btrfs_block_rsv*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 1
  store %struct.btrfs_block_rsv* %13, %struct.btrfs_block_rsv** %9, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  store %struct.btrfs_block_rsv* %15, %struct.btrfs_block_rsv** %10, align 8
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %11, align 8
  %16 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %18 = icmp eq %struct.btrfs_block_rsv* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %9, align 8
  store %struct.btrfs_block_rsv* %20, %struct.btrfs_block_rsv** %11, align 8
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %23 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %9, align 8
  %24 = icmp ne %struct.btrfs_block_rsv* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  store %struct.btrfs_block_rsv* %31, %struct.btrfs_block_rsv** %11, align 8
  br label %32

32:                                               ; preds = %30, %25, %21
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %11, align 8
  %35 = icmp ne %struct.btrfs_block_rsv* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %38 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %11, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %11, align 8
  br label %45

45:                                               ; preds = %44, %36, %33
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %47 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @block_rsv_release_bytes(%struct.btrfs_fs_info* %46, %struct.btrfs_block_rsv* %47, %struct.btrfs_block_rsv* %48, i32 %49, i32* %50)
  ret i32 %51
}

declare dso_local i32 @block_rsv_release_bytes(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
