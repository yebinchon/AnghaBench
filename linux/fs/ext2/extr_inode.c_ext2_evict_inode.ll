; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32 }
%struct.ext2_block_alloc_info = type { i32 }
%struct.TYPE_2__ = type { %struct.ext2_block_alloc_info*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext2_block_alloc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @is_bad_inode(%struct.inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @dquot_initialize(%struct.inode* %14)
  br label %19

16:                                               ; preds = %9, %1
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call i32 @dquot_drop(%struct.inode* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = call i32 @truncate_inode_pages_final(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sb_start_intwrite(i32 %28)
  %30 = call i32 (...) @ktime_get_real_seconds()
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = call i32 @mark_inode_dirty(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = call i32 @inode_needs_sync(%struct.inode* %37)
  %39 = call i32 @__ext2_write_inode(%struct.inode* %36, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = call i32 @ext2_truncate_blocks(%struct.inode* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %25
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = call i32 @ext2_xattr_delete_inode(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %19
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @invalidate_inode_buffers(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = call i32 @clear_inode(%struct.inode* %55)
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = call i32 @ext2_discard_reservation(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %61, align 8
  store %struct.ext2_block_alloc_info* %62, %struct.ext2_block_alloc_info** %3, align 8
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.ext2_block_alloc_info* null, %struct.ext2_block_alloc_info** %65, align 8
  %66 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %3, align 8
  %67 = call i64 @unlikely(%struct.ext2_block_alloc_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %3, align 8
  %71 = call i32 @kfree(%struct.ext2_block_alloc_info* %70)
  br label %72

72:                                               ; preds = %69, %52
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.inode*, %struct.inode** %2, align 8
  %77 = call i32 @ext2_free_inode(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %2, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sb_end_intwrite(i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @__ext2_write_inode(%struct.inode*, i32) #1

declare dso_local i32 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @ext2_truncate_blocks(%struct.inode*, i32) #1

declare dso_local i32 @ext2_xattr_delete_inode(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @ext2_discard_reservation(%struct.inode*) #1

declare dso_local i64 @unlikely(%struct.ext2_block_alloc_info*) #1

declare dso_local i32 @kfree(%struct.ext2_block_alloc_info*) #1

declare dso_local i32 @ext2_free_inode(%struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
