; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_add_relation_rb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_add_relation_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_qgroup = type { i32, i32 }
%struct.btrfs_qgroup_list = type { i32, i32, %struct.btrfs_qgroup*, %struct.btrfs_qgroup* }

@ENOENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32)* @add_relation_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_relation_rb(%struct.btrfs_fs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_qgroup*, align 8
  %9 = alloca %struct.btrfs_qgroup*, align 8
  %10 = alloca %struct.btrfs_qgroup_list*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.btrfs_qgroup* @find_qgroup_rb(%struct.btrfs_fs_info* %11, i32 %12)
  store %struct.btrfs_qgroup* %13, %struct.btrfs_qgroup** %8, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.btrfs_qgroup* @find_qgroup_rb(%struct.btrfs_fs_info* %14, i32 %15)
  store %struct.btrfs_qgroup* %16, %struct.btrfs_qgroup** %9, align 8
  %17 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %8, align 8
  %18 = icmp ne %struct.btrfs_qgroup* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %9, align 8
  %21 = icmp ne %struct.btrfs_qgroup* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.btrfs_qgroup_list* @kzalloc(i32 24, i32 %26)
  store %struct.btrfs_qgroup_list* %27, %struct.btrfs_qgroup_list** %10, align 8
  %28 = load %struct.btrfs_qgroup_list*, %struct.btrfs_qgroup_list** %10, align 8
  %29 = icmp ne %struct.btrfs_qgroup_list* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %9, align 8
  %35 = load %struct.btrfs_qgroup_list*, %struct.btrfs_qgroup_list** %10, align 8
  %36 = getelementptr inbounds %struct.btrfs_qgroup_list, %struct.btrfs_qgroup_list* %35, i32 0, i32 3
  store %struct.btrfs_qgroup* %34, %struct.btrfs_qgroup** %36, align 8
  %37 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %8, align 8
  %38 = load %struct.btrfs_qgroup_list*, %struct.btrfs_qgroup_list** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_qgroup_list, %struct.btrfs_qgroup_list* %38, i32 0, i32 2
  store %struct.btrfs_qgroup* %37, %struct.btrfs_qgroup** %39, align 8
  %40 = load %struct.btrfs_qgroup_list*, %struct.btrfs_qgroup_list** %10, align 8
  %41 = getelementptr inbounds %struct.btrfs_qgroup_list, %struct.btrfs_qgroup_list* %40, i32 0, i32 1
  %42 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.btrfs_qgroup_list*, %struct.btrfs_qgroup_list** %10, align 8
  %46 = getelementptr inbounds %struct.btrfs_qgroup_list, %struct.btrfs_qgroup_list* %45, i32 0, i32 0
  %47 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %9, align 8
  %48 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %30, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.btrfs_qgroup* @find_qgroup_rb(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_qgroup_list* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
