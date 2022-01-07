; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c___setup_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c___setup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i64, %struct.TYPE_2__, i64, %struct.TYPE_2__, %struct.TYPE_2__, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i64, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i64, i32 }

@BTRFS_FS_STATE_DUMMY_FS_INFO = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IO_TREE_ROOT_DIRTY_LOG_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, %struct.btrfs_fs_info*, i32)* @__setup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_root(%struct.btrfs_root* %0, %struct.btrfs_fs_info* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @BTRFS_FS_STATE_DUMMY_FS_INFO, align 4
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 49
  store i32* null, i32** %13, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 48
  store i32* null, i32** %15, align 8
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 47
  store i64 0, i64* %17, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 46
  store i64 0, i64* %19, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 45
  store i64 0, i64* %21, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 44
  store i64 0, i64* %23, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 43
  store i64 0, i64* %25, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 42
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @RB_ROOT, align 4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 41
  store i32 %28, i32* %30, align 4
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 40
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @INIT_RADIX_TREE(i32* %32, i32 %33)
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 39
  store i32* null, i32** %36, align 8
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 38
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 37
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 36
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 35
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 34
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 33
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 32
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 31
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 31
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %69 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %68, i32 0, i32 30
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 29
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 28
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 27
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %80, i32 0, i32 26
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 26
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %91 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %90, i32 0, i32 25
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 24
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %97 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %96, i32 0, i32 23
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %100 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %99, i32 0, i32 22
  %101 = call i32 @mutex_init(i32* %100)
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %103 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %102, i32 0, i32 21
  %104 = call i32 @mutex_init(i32* %103)
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %106 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %105, i32 0, i32 20
  %107 = call i32 @init_waitqueue_head(i32* %106)
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %109 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %108, i32 0, i32 19
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @init_waitqueue_head(i32* %111)
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %114 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %113, i32 0, i32 19
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = call i32 @init_waitqueue_head(i32* %116)
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %119 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %118, i32 0, i32 18
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %124 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %123, i32 0, i32 18
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %129 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %128, i32 0, i32 17
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = call i32 @atomic_set(i32* %131, i32 0)
  %133 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %134 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %133, i32 0, i32 17
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = call i32 @atomic_set(i32* %136, i32 0)
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %139 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %138, i32 0, i32 16
  %140 = call i32 @atomic_set(i32* %139, i32 0)
  %141 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %142 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %141, i32 0, i32 15
  %143 = call i32 @atomic_set(i32* %142, i32 0)
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %145 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %144, i32 0, i32 14
  %146 = call i32 @refcount_set(i32* %145, i32 1)
  %147 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %148 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %147, i32 0, i32 13
  %149 = call i32 @atomic_set(i32* %148, i32 0)
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %151 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %150, i32 0, i32 12
  %152 = call i32 @atomic_set(i32* %151, i32 0)
  %153 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %154 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %153, i32 0, i32 11
  %155 = call i32 @atomic_set(i32* %154, i32 0)
  %156 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %157 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %156, i32 0, i32 10
  store i64 0, i64* %157, align 8
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %159 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 8
  %160 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %161 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %160, i32 0, i32 9
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %3
  %165 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %166 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %167 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %166, i32 0, i32 8
  %168 = load i32, i32* @IO_TREE_ROOT_DIRTY_LOG_PAGES, align 4
  %169 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %165, i32* %167, i32 %168, i32* null)
  br label %170

170:                                              ; preds = %164, %3
  %171 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %172 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %171, i32 0, i32 4
  %173 = call i32 @memset(%struct.TYPE_2__* %172, i32 0, i32 4)
  %174 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %175 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %174, i32 0, i32 7
  %176 = call i32 @memset(%struct.TYPE_2__* %175, i32 0, i32 4)
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %178 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %177, i32 0, i32 6
  %179 = call i32 @memset(%struct.TYPE_2__* %178, i32 0, i32 4)
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %170
  %183 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %184 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %187 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %186, i32 0, i32 5
  store i64 %185, i64* %187, align 8
  br label %191

188:                                              ; preds = %170
  %189 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %190 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %189, i32 0, i32 5
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %188, %182
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %197 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %199 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %198, i32 0, i32 2
  %200 = call i32 @spin_lock_init(i32* %199)
  %201 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %202 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %201, i32 0, i32 1
  %203 = call i32 @btrfs_qgroup_init_swapped_blocks(i32* %202)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @extent_io_tree_init(%struct.btrfs_fs_info*, i32*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_init_swapped_blocks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
