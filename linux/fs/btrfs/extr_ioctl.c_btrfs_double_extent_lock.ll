; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_double_extent_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_double_extent_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.inode*, i32, i32)* @btrfs_double_extent_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_double_extent_lock(%struct.inode* %0, i32 %1, %struct.inode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = icmp ult %struct.inode* %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = ptrtoint %struct.inode* %15 to i32
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = ptrtoint %struct.inode* %17 to i32
  %19 = call i32 @swap(i32 %16, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @swap(i32 %20, i32 %21)
  br label %36

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = icmp eq %struct.inode* %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @swap(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27, %23
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @lock_extent(i32* %39, i32 %40, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @lock_extent(i32* %48, i32 %49, i32 %53)
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @lock_extent(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
