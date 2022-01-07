; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_comp_tree_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_comp_tree_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_tree_ref = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BTRFS_TREE_BLOCK_REF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref*)* @comp_tree_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_tree_refs(%struct.btrfs_delayed_tree_ref* %0, %struct.btrfs_delayed_tree_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_delayed_tree_ref*, align 8
  %5 = alloca %struct.btrfs_delayed_tree_ref*, align 8
  store %struct.btrfs_delayed_tree_ref* %0, %struct.btrfs_delayed_tree_ref** %4, align 8
  store %struct.btrfs_delayed_tree_ref* %1, %struct.btrfs_delayed_tree_ref** %5, align 8
  %6 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BTRFS_TREE_BLOCK_REF_KEY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %51

21:                                               ; preds = %12
  %22 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %51

30:                                               ; preds = %21
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %51

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %30
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %39, %29, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
