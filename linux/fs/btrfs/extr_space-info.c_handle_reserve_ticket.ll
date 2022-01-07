; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_handle_reserve_ticket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_handle_reserve_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32 }
%struct.reserve_ticket = type { i32, i64, i32 }

@priority_flush_states = common dso_local global i32 0, align 4
@evict_flush_states = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*, i32)* @handle_reserve_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reserve_ticket(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, %struct.reserve_ticket* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_space_info*, align 8
  %7 = alloca %struct.reserve_ticket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %6, align 8
  store %struct.reserve_ticket* %2, %struct.reserve_ticket** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %32 [
    i32 130, label %11
    i32 128, label %16
    i32 129, label %24
  ]

11:                                               ; preds = %4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %14 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %15 = call i32 @wait_reserve_ticket(%struct.btrfs_fs_info* %12, %struct.btrfs_space_info* %13, %struct.reserve_ticket* %14)
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %18 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %19 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %20 = load i32, i32* @priority_flush_states, align 4
  %21 = load i32, i32* @priority_flush_states, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @priority_reclaim_metadata_space(%struct.btrfs_fs_info* %17, %struct.btrfs_space_info* %18, %struct.reserve_ticket* %19, i32 %20, i32 %22)
  br label %34

24:                                               ; preds = %4
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %26 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %27 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %28 = load i32, i32* @evict_flush_states, align 4
  %29 = load i32, i32* @evict_flush_states, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = call i32 @priority_reclaim_metadata_space(%struct.btrfs_fs_info* %25, %struct.btrfs_space_info* %26, %struct.reserve_ticket* %27, i32 %28, i32 %30)
  br label %34

32:                                               ; preds = %4
  %33 = call i32 @ASSERT(i32 0)
  br label %34

34:                                               ; preds = %32, %24, %16, %11
  %35 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %39 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %42 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %47 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %34
  %51 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %52 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %51, i32 0, i32 2
  %53 = call i32 @list_del_init(i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %62 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %65 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %64, i32 0, i32 2
  %66 = call i32 @list_empty(i32* %65)
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %69 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.reserve_ticket*, %struct.reserve_ticket** %7, align 8
  %74 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %72, %60
  %78 = phi i1 [ false, %60 ], [ %76, %72 ]
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @wait_reserve_ticket(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*) #1

declare dso_local i32 @priority_reclaim_metadata_space(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
