; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_space_info_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_space_info_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32, i32 }

@space_info_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sysfs_add_space_info_type(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %5, align 8
  %7 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %8 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %7, i32 0, i32 0
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @alloc_name(i32 %14)
  %16 = call i32 @kobject_init_and_add(i32* %8, i32* @space_info_ktype, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %20, i32 0, i32 0
  %22 = call i32 @kobject_put(i32* %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @alloc_name(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
