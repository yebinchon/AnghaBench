; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delete_delayed_insertion_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delete_delayed_insertion_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_delayed_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_delayed_node*, %struct.btrfs_key*)* @btrfs_delete_delayed_insertion_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_delete_delayed_insertion_item(%struct.btrfs_fs_info* %0, %struct.btrfs_delayed_node* %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_delayed_node*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_delayed_item*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_delayed_node* %1, %struct.btrfs_delayed_node** %6, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %7, align 8
  %9 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %13 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %14 = call %struct.btrfs_delayed_item* @__btrfs_lookup_delayed_insertion_item(%struct.btrfs_delayed_node* %12, %struct.btrfs_key* %13)
  store %struct.btrfs_delayed_item* %14, %struct.btrfs_delayed_item** %8, align 8
  %15 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %16 = icmp ne %struct.btrfs_delayed_item* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  store i32 1, i32* %4, align 4
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %26 = call i32 @btrfs_delayed_item_release_metadata(i32 %24, %struct.btrfs_delayed_item* %25)
  %27 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %28 = call i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item* %27)
  %29 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_lookup_delayed_insertion_item(%struct.btrfs_delayed_node*, %struct.btrfs_key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_delayed_item_release_metadata(i32, %struct.btrfs_delayed_item*) #1

declare dso_local i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
