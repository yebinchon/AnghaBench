; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_read_node_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_read_node_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca %struct.btrfs_key, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %10 = call i32 @btrfs_header_level(%struct.extent_buffer* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %16 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.extent_buffer* @ERR_PTR(i32 %20)
  store %struct.extent_buffer* %21, %struct.extent_buffer** %3, align 8
  br label %57

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %27, %struct.btrfs_key* %8, i32 %28)
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %33, i32 %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call %struct.extent_buffer* @read_tree_block(i32 %32, i32 %35, i32 %38, i32 %40, %struct.btrfs_key* %8)
  store %struct.extent_buffer* %41, %struct.extent_buffer** %7, align 8
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %43 = call i32 @IS_ERR(%struct.extent_buffer* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %22
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %47 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %51 = call i32 @free_extent_buffer(%struct.extent_buffer* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.extent_buffer* @ERR_PTR(i32 %53)
  store %struct.extent_buffer* %54, %struct.extent_buffer** %7, align 8
  br label %55

55:                                               ; preds = %49, %45, %22
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  store %struct.extent_buffer* %56, %struct.extent_buffer** %3, align 8
  br label %57

57:                                               ; preds = %55, %18
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %58
}

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(i32, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
