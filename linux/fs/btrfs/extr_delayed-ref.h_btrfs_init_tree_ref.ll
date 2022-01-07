; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.h_btrfs_init_tree_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.h_btrfs_init_tree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ref = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@BTRFS_REF_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_ref*, i32, i8*)* @btrfs_init_tree_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_init_tree_ref(%struct.btrfs_ref* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.btrfs_ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.btrfs_ref* %0, %struct.btrfs_ref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* @BTRFS_REF_METADATA, align 4
  %25 = load %struct.btrfs_ref*, %struct.btrfs_ref** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
