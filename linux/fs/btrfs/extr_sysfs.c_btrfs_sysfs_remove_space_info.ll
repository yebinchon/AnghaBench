; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_remove_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_remove_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_space_info = type { %struct.kobject, %struct.kobject** }
%struct.kobject = type { i32 }

@BTRFS_NR_RAID_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sysfs_remove_space_info(%struct.btrfs_space_info* %0) #0 {
  %2 = alloca %struct.btrfs_space_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  store %struct.btrfs_space_info* %0, %struct.btrfs_space_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BTRFS_NR_RAID_TYPES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %10, i32 0, i32 1
  %12 = load %struct.kobject**, %struct.kobject*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kobject*, %struct.kobject** %12, i64 %14
  %16 = load %struct.kobject*, %struct.kobject** %15, align 8
  store %struct.kobject* %16, %struct.kobject** %4, align 8
  %17 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %2, align 8
  %18 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %17, i32 0, i32 1
  %19 = load %struct.kobject**, %struct.kobject*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kobject*, %struct.kobject** %19, i64 %21
  store %struct.kobject* null, %struct.kobject** %22, align 8
  %23 = load %struct.kobject*, %struct.kobject** %4, align 8
  %24 = icmp ne %struct.kobject* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %9
  %26 = load %struct.kobject*, %struct.kobject** %4, align 8
  %27 = call i32 @kobject_del(%struct.kobject* %26)
  %28 = load %struct.kobject*, %struct.kobject** %4, align 8
  %29 = call i32 @kobject_put(%struct.kobject* %28)
  br label %30

30:                                               ; preds = %25, %9
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %35, i32 0, i32 0
  %37 = call i32 @kobject_del(%struct.kobject* %36)
  %38 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %38, i32 0, i32 0
  %40 = call i32 @kobject_put(%struct.kobject* %39)
  ret void
}

declare dso_local i32 @kobject_del(%struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
