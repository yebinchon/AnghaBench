; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_btrfs_inode.h_btrfs_inode_in_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_btrfs_inode.h_btrfs_inode_in_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { i64, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_inode*, i64)* @btrfs_inode_in_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_inode_in_log(%struct.btrfs_inode* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %6, i32 0, i32 3
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %25, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = call i32 (...) @smp_mb()
  %34 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %22, %14, %2
  %42 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %42, i32 0, i32 3
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
