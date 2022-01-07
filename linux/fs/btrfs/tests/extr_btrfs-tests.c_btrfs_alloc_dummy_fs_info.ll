; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_alloc_dummy_fs_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_alloc_dummy_fs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IO_TREE_FS_INFO_FREED_EXTENTS0 = common dso_local global i32 0, align 4
@IO_TREE_FS_INFO_FREED_EXTENTS1 = common dso_local global i32 0, align 4
@BTRFS_FS_STATE_DUMMY_FS_INFO = common dso_local global i32 0, align 4
@test_mnt = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 144, i32 %7)
  %9 = bitcast i8* %8 to %struct.btrfs_fs_info*
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %6, align 8
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %11 = icmp ne %struct.btrfs_fs_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %3, align 8
  br label %148

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 4, i32 %15)
  %17 = bitcast i8* %16 to %struct.btrfs_fs_info*
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 21
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %19, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 21
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  %23 = icmp ne %struct.btrfs_fs_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %26 = call i32 @kfree(%struct.btrfs_fs_info* %25)
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %3, align 8
  br label %148

27:                                               ; preds = %14
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 4, i32 %28)
  %30 = bitcast i8* %29 to %struct.btrfs_fs_info*
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 20
  store %struct.btrfs_fs_info* %30, %struct.btrfs_fs_info** %32, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 20
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %34, align 8
  %36 = icmp ne %struct.btrfs_fs_info* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 21
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %39, align 8
  %41 = call i32 @kfree(%struct.btrfs_fs_info* %40)
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %43 = call i32 @kfree(%struct.btrfs_fs_info* %42)
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %3, align 8
  br label %148

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 24
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 23
  store i8* %48, i8** %50, align 8
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 22
  %53 = call i64 @init_srcu_struct(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 21
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %57, align 8
  %59 = call i32 @kfree(%struct.btrfs_fs_info* %58)
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %60, i32 0, i32 20
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %61, align 8
  %63 = call i32 @kfree(%struct.btrfs_fs_info* %62)
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %65 = call i32 @kfree(%struct.btrfs_fs_info* %64)
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %3, align 8
  br label %148

66:                                               ; preds = %44
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 19
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 18
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 17
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 16
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %80 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %79, i32 0, i32 15
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %83 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %82, i32 0, i32 14
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %86 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %85, i32 0, i32 13
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %89 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %88, i32 0, i32 12
  %90 = call i32 @rwlock_init(i32* %89)
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %92 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %91, i32 0, i32 11
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @RB_ROOT, align 4
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %97 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %96, i32 0, i32 9
  store i32* null, i32** %97, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 8
  %100 = call i32 @atomic64_set(i32* %99, i32 0)
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 7
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %105 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %104, i32 0, i32 6
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %108 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %107, i32 0, i32 5
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %111 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %110, i32 0, i32 4
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call i32 @INIT_RADIX_TREE(i32* %111, i32 %112)
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %115 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %114, i32 0, i32 3
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call i32 @INIT_RADIX_TREE(i32* %115, i32 %116)
  %118 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* @IO_TREE_FS_INFO_FREED_EXTENTS0, align 4
  %124 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %118, i32* %122, i32 %123, i32* null)
  %125 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %126 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %127 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* @IO_TREE_FS_INFO_FREED_EXTENTS1, align 4
  %131 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %125, i32* %129, i32 %130, i32* null)
  %132 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %133 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %137 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  %138 = load i32, i32* @BTRFS_FS_STATE_DUMMY_FS_INFO, align 4
  %139 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %140 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %139, i32 0, i32 0
  %141 = call i32 @set_bit(i32 %138, i32* %140)
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_mnt, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store %struct.btrfs_fs_info* %142, %struct.btrfs_fs_info** %146, align 8
  %147 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_fs_info* %147, %struct.btrfs_fs_info** %3, align 8
  br label %148

148:                                              ; preds = %66, %55, %37, %24, %12
  %149 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  ret %struct.btrfs_fs_info* %149
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_fs_info*) #1

declare dso_local i64 @init_srcu_struct(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @extent_io_tree_init(%struct.btrfs_fs_info*, i32*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
