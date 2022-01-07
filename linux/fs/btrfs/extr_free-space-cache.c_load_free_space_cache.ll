; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_load_free_space_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_load_free_space_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64, i64, %struct.TYPE_2__, i32, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.btrfs_free_space_ctl = type { i64, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_path = type { i32, i32 }

@BTRFS_DC_WRITTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"block group %llu has wrong amount of free space\00", align 1
@BTRFS_DC_CLEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"failed to load free space cache for block group %llu, rebuilding it now\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_free_space_cache(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_free_space_ctl*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %11, i32 0, i32 6
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %4, align 8
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 5
  %16 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %15, align 8
  store %struct.btrfs_free_space_ctl* %16, %struct.btrfs_free_space_ctl** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 4
  %19 = call i64 @btrfs_block_group_used(i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BTRFS_DC_WRITTEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock(i32* %30)
  store i32 0, i32* %2, align 4
  br label %146

32:                                               ; preds = %1
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %36, %struct.btrfs_path** %7, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %38 = icmp ne %struct.btrfs_path* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %146

40:                                               ; preds = %32
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %47 = call %struct.inode* @lookup_free_space_inode(%struct.btrfs_block_group_cache* %45, %struct.btrfs_path* %46)
  store %struct.inode* %47, %struct.inode** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @IS_ERR(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %53 = call i32 @btrfs_free_path(%struct.btrfs_path* %52)
  store i32 0, i32* %2, align 4
  br label %146

54:                                               ; preds = %40
  %55 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %55, i32 0, i32 3
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BTRFS_DC_WRITTEN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %65 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %68 = call i32 @btrfs_free_path(%struct.btrfs_path* %67)
  br label %123

69:                                               ; preds = %54
  %70 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %71 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %70, i32 0, i32 3
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %79 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %80 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @__load_free_space_cache(i32 %75, %struct.inode* %76, %struct.btrfs_free_space_ctl* %77, %struct.btrfs_path* %78, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %85 = call i32 @btrfs_free_path(%struct.btrfs_path* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %123

89:                                               ; preds = %69
  %90 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %91 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %90, i32 0, i32 1
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %94 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %97 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = icmp eq i64 %95, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %109 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %89
  %114 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %115 = call i32 @__btrfs_remove_free_space_cache(%struct.btrfs_free_space_ctl* %114)
  %116 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %117 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %118 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %120)
  store i32 -1, i32* %8, align 4
  br label %122

122:                                              ; preds = %113, %89
  br label %123

123:                                              ; preds = %122, %88, %63
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %128 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %127, i32 0, i32 3
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load i64, i64* @BTRFS_DC_CLEAR, align 8
  %131 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %132 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %134 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %133, i32 0, i32 3
  %135 = call i32 @spin_unlock(i32* %134)
  store i32 0, i32* %8, align 4
  %136 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %137 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %138 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %136, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %126, %123
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = call i32 @iput(%struct.inode* %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %51, %39, %28
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.inode* @lookup_free_space_inode(%struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @__load_free_space_cache(i32, %struct.inode*, %struct.btrfs_free_space_ctl*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(%struct.btrfs_free_space_ctl*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
