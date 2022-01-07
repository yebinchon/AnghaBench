; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_global_rsv_size_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_global_rsv_size_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @global_rsv_size_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_rsv_size_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_block_rsv*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.btrfs_fs_info* @to_fs_info(i32 %11)
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %7, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  store %struct.btrfs_block_rsv* %14, %struct.btrfs_block_rsv** %8, align 8
  %15 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %16 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %15, i32 0, i32 1
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %17, i32 0, i32 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @btrfs_show_u64(i32* %16, i32* %18, i8* %19)
  ret i32 %20
}

declare dso_local %struct.btrfs_fs_info* @to_fs_info(i32) #1

declare dso_local i32 @btrfs_show_u64(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
