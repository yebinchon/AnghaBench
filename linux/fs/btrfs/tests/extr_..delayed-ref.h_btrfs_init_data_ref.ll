; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..delayed-ref.h_btrfs_init_data_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..delayed-ref.h_btrfs_init_data_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ref = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@BTRFS_REF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_ref*, i8*, i8*, i8*)* @btrfs_init_data_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_init_data_ref(%struct.btrfs_ref* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.btrfs_ref*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.btrfs_ref* %0, %struct.btrfs_ref** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @BTRFS_REF_DATA, align 4
  %31 = load %struct.btrfs_ref*, %struct.btrfs_ref** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
