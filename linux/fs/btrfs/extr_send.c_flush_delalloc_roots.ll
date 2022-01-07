; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_flush_delalloc_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_flush_delalloc_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }

@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @flush_delalloc_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_delalloc_roots(%struct.send_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  %7 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 2
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %9, %struct.btrfs_root** %4, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = icmp ne %struct.btrfs_root* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = call i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %12
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = load i32, i32* @U64_MAX, align 4
  %22 = load i32, i32* @U64_MAX, align 4
  %23 = call i32 @btrfs_wait_ordered_extents(%struct.btrfs_root* %20, i32 %21, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %38, align 8
  store %struct.btrfs_root* %39, %struct.btrfs_root** %4, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %41 = call i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %55

46:                                               ; preds = %31
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %48 = load i32, i32* @U64_MAX, align 4
  %49 = load i32, i32* @U64_MAX, align 4
  %50 = call i32 @btrfs_wait_ordered_extents(%struct.btrfs_root* %47, i32 %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %25

54:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %44, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_wait_ordered_extents(%struct.btrfs_root*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
