; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_to_fs_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_to_fs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.kobject = type { i32* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }

@btrfs_ktype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_fs_info* (%struct.kobject*)* @to_fs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_fs_info* @to_fs_info(%struct.kobject* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  %4 = load %struct.kobject*, %struct.kobject** %3, align 8
  %5 = getelementptr inbounds %struct.kobject, %struct.kobject* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, @btrfs_ktype
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.kobject*, %struct.kobject** %3, align 8
  %11 = call %struct.TYPE_2__* @to_fs_devs(%struct.kobject* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  ret %struct.btrfs_fs_info* %15
}

declare dso_local %struct.TYPE_2__* @to_fs_devs(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
