; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.root_entry = type { i32 }
%struct.block_entry = type { i32, i32, i32, i32, i32 }
%struct.ref_entry = type { i32, i32, i64, %struct.root_entry*, %struct.root_entry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.root_entry*, %struct.root_entry*, %struct.root_entry*, i32)* @add_tree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tree_block(%struct.btrfs_fs_info* %0, %struct.root_entry* %1, %struct.root_entry* %2, %struct.root_entry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.root_entry*, align 8
  %9 = alloca %struct.root_entry*, align 8
  %10 = alloca %struct.root_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.block_entry*, align 8
  %13 = alloca %struct.root_entry*, align 8
  %14 = alloca %struct.ref_entry*, align 8
  %15 = alloca %struct.ref_entry*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.root_entry* %1, %struct.root_entry** %8, align 8
  store %struct.root_entry* %2, %struct.root_entry** %9, align 8
  store %struct.root_entry* %3, %struct.root_entry** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ref_entry* null, %struct.ref_entry** %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ref_entry* @kmalloc(i32 32, i32 %16)
  store %struct.ref_entry* %17, %struct.ref_entry** %14, align 8
  %18 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %19 = icmp ne %struct.ref_entry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %101

23:                                               ; preds = %5
  %24 = load %struct.root_entry*, %struct.root_entry** %9, align 8
  %25 = icmp ne %struct.root_entry* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %28 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %27, i32 0, i32 4
  store %struct.root_entry* null, %struct.root_entry** %28, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.root_entry*, %struct.root_entry** %8, align 8
  %31 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %32 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %31, i32 0, i32 4
  store %struct.root_entry* %30, %struct.root_entry** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.root_entry*, %struct.root_entry** %9, align 8
  %35 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %36 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %35, i32 0, i32 3
  store %struct.root_entry* %34, %struct.root_entry** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %39 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %41 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %43 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %45 = load %struct.root_entry*, %struct.root_entry** %10, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.root_entry*, %struct.root_entry** %8, align 8
  %50 = call %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info* %44, %struct.root_entry* %45, i32 %48, %struct.root_entry* %49)
  store %struct.block_entry* %50, %struct.block_entry** %12, align 8
  %51 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %52 = call i64 @IS_ERR(%struct.block_entry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %33
  %55 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %56 = call i32 @kfree(%struct.ref_entry* %55)
  %57 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %58 = call i32 @PTR_ERR(%struct.block_entry* %57)
  store i32 %58, i32* %6, align 4
  br label %101

59:                                               ; preds = %33
  %60 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %61 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %65 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %67 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.root_entry*, %struct.root_entry** %9, align 8
  %69 = icmp ne %struct.root_entry* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %59
  %71 = load %struct.root_entry*, %struct.root_entry** %8, align 8
  %72 = call i32 @ASSERT(%struct.root_entry* %71)
  %73 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %74 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %73, i32 0, i32 3
  %75 = load %struct.root_entry*, %struct.root_entry** %8, align 8
  %76 = call %struct.root_entry* @lookup_root_entry(i32* %74, %struct.root_entry* %75)
  store %struct.root_entry* %76, %struct.root_entry** %13, align 8
  %77 = load %struct.root_entry*, %struct.root_entry** %13, align 8
  %78 = call i32 @ASSERT(%struct.root_entry* %77)
  %79 = load %struct.root_entry*, %struct.root_entry** %13, align 8
  %80 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %70, %59
  %84 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %85 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %84, i32 0, i32 2
  %86 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %87 = call %struct.ref_entry* @insert_ref_entry(i32* %85, %struct.ref_entry* %86)
  store %struct.ref_entry* %87, %struct.ref_entry** %15, align 8
  %88 = load %struct.ref_entry*, %struct.ref_entry** %15, align 8
  %89 = icmp ne %struct.ref_entry* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.ref_entry*, %struct.ref_entry** %15, align 8
  %92 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ref_entry*, %struct.ref_entry** %14, align 8
  %96 = call i32 @kfree(%struct.ref_entry* %95)
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %54, %20
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.ref_entry* @kmalloc(i32, i32) #1

declare dso_local %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info*, %struct.root_entry*, i32, %struct.root_entry*) #1

declare dso_local i64 @IS_ERR(%struct.block_entry*) #1

declare dso_local i32 @kfree(%struct.ref_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.block_entry*) #1

declare dso_local i32 @ASSERT(%struct.root_entry*) #1

declare dso_local %struct.root_entry* @lookup_root_entry(i32*, %struct.root_entry*) #1

declare dso_local %struct.ref_entry* @insert_ref_entry(i32*, %struct.ref_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
