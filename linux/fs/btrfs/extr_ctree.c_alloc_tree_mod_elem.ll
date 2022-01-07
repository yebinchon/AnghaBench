; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_alloc_tree_mod_elem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_alloc_tree_mod_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_mod_elem = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.extent_buffer = type { i32 }

@MOD_LOG_KEY_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_mod_elem* (%struct.extent_buffer*, i32, i32, i32)* @alloc_tree_mod_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_mod_elem* @alloc_tree_mod_elem(%struct.extent_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tree_mod_elem*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_mod_elem*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call %struct.tree_mod_elem* @kzalloc(i32 28, i32 %11)
  store %struct.tree_mod_elem* %12, %struct.tree_mod_elem** %10, align 8
  %13 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %14 = icmp ne %struct.tree_mod_elem* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %5, align 8
  br label %52

16:                                               ; preds = %4
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %21 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MOD_LOG_KEY_ADD, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %27 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %28 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %27, i32 0, i32 5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @btrfs_node_key(%struct.extent_buffer* %26, i32* %28, i32 %29)
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %31, i32 %32)
  %34 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %35 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %16
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %39 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %42 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %43, i32 %44)
  %46 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %47 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  %49 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %48, i32 0, i32 2
  %50 = call i32 @RB_CLEAR_NODE(i32* %49)
  %51 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %10, align 8
  store %struct.tree_mod_elem* %51, %struct.tree_mod_elem** %5, align 8
  br label %52

52:                                               ; preds = %36, %15
  %53 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %5, align 8
  ret %struct.tree_mod_elem* %53
}

declare dso_local %struct.tree_mod_elem* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, i32*, i32) #1

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
