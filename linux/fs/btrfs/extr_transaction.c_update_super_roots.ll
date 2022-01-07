; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_update_super_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_update_super_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.btrfs_super_block* }
%struct.TYPE_4__ = type { %struct.btrfs_root_item }
%struct.btrfs_root_item = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.btrfs_root_item }
%struct.btrfs_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_FS_UPDATE_UUID_TREE_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @update_super_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_super_roots(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_root_item*, align 8
  %4 = alloca %struct.btrfs_super_block*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 3
  %7 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  store %struct.btrfs_super_block* %7, %struct.btrfs_super_block** %4, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.btrfs_root_item* %11, %struct.btrfs_root_item** %3, align 8
  %12 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.btrfs_root_item* %30, %struct.btrfs_root_item** %3, align 8
  %31 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %40 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %45 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %47 = load i32, i32* @SPACE_CACHE, align 4
  %48 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %1
  %51 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %55 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %1
  %57 = load i32, i32* @BTRFS_FS_UPDATE_UUID_TREE_GEN, align 4
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %56
  ret void
}

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
