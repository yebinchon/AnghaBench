; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c___btrfs_run_defrag_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c___btrfs_run_defrag_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.inode_defrag = type { i32, i32, i32, i32, i32 }
%struct.btrfs_root = type opaque
%struct.inode = type { i32 }
%struct.btrfs_key = type { i8*, i32, i32 }
%struct.btrfs_ioctl_defrag_range_args = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_INODE_IN_DEFRAG = common dso_local global i32 0, align 4
@BTRFS_DEFRAG_BATCH = common dso_local global i32 0, align 4
@btrfs_inode_defrag_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.inode_defrag*)* @__btrfs_run_defrag_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_run_defrag_inode(%struct.btrfs_fs_info* %0, %struct.inode_defrag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.inode_defrag*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.btrfs_ioctl_defrag_range_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.inode_defrag* %1, %struct.inode_defrag** %5, align 8
  %13 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %14 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %19, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = call i32 @srcu_read_lock(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = call %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %23, %struct.btrfs_key* %8)
  %25 = bitcast %struct.inode* %24 to %struct.btrfs_root*
  store %struct.btrfs_root* %25, %struct.btrfs_root** %6, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %27 = bitcast %struct.btrfs_root* %26 to %struct.inode*
  %28 = call i64 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %32 = bitcast %struct.btrfs_root* %31 to %struct.inode*
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %12, align 4
  br label %123

34:                                               ; preds = %2
  %35 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %36 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %46 = bitcast %struct.btrfs_root* %45 to %struct.inode*
  %47 = call %struct.inode* @btrfs_iget(i32 %44, %struct.btrfs_key* %8, %struct.inode* %46, i32* null)
  store %struct.inode* %47, %struct.inode** %7, align 8
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i64 @IS_ERR(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @PTR_ERR(%struct.inode* %52)
  store i32 %53, i32* %12, align 4
  br label %123

54:                                               ; preds = %34
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @srcu_read_unlock(i32* %56, i32 %57)
  %59 = load i32, i32* @BTRFS_INODE_IN_DEFRAG, align 4
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %59, i32* %62)
  %64 = call i32 @memset(%struct.btrfs_ioctl_defrag_range_args* %9, i32 0, i32 16)
  %65 = getelementptr inbounds %struct.btrfs_ioctl_defrag_range_args, %struct.btrfs_ioctl_defrag_range_args* %9, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %65, align 8
  %66 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %67 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.btrfs_ioctl_defrag_range_args, %struct.btrfs_ioctl_defrag_range_args* %9, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sb_start_write(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %76 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BTRFS_DEFRAG_BATCH, align 4
  %79 = call i32 @btrfs_defrag_file(%struct.inode* %74, i32* null, %struct.btrfs_ioctl_defrag_range_args* %9, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sb_end_write(i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @BTRFS_DEFRAG_BATCH, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %54
  %88 = getelementptr inbounds %struct.btrfs_ioctl_defrag_range_args, %struct.btrfs_ioctl_defrag_range_args* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %91 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %92)
  %94 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %95 = call i32 @btrfs_requeue_inode_defrag(%struct.TYPE_3__* %93, %struct.inode_defrag* %94)
  br label %120

96:                                               ; preds = %54
  %97 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %98 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %103 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %108 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %110 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %111)
  %113 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %114 = call i32 @btrfs_requeue_inode_defrag(%struct.TYPE_3__* %112, %struct.inode_defrag* %113)
  br label %119

115:                                              ; preds = %101, %96
  %116 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %117 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %118 = call i32 @kmem_cache_free(i32 %116, %struct.inode_defrag* %117)
  br label %119

119:                                              ; preds = %115, %106
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = call i32 @iput(%struct.inode* %121)
  store i32 0, i32* %3, align 4
  br label %132

123:                                              ; preds = %51, %30
  %124 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %125 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %124, i32 0, i32 0
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @srcu_read_unlock(i32* %125, i32 %126)
  %128 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %129 = load %struct.inode_defrag*, %struct.inode_defrag** %5, align 8
  %130 = call i32 @kmem_cache_free(i32 %128, %struct.inode_defrag* %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %123, %120
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.inode* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_iget(i32, %struct.btrfs_key*, %struct.inode*, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @memset(%struct.btrfs_ioctl_defrag_range_args*, i32, i32) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @btrfs_defrag_file(%struct.inode*, i32*, %struct.btrfs_ioctl_defrag_range_args*, i32, i32) #1

declare dso_local i32 @sb_end_write(i32) #1

declare dso_local i32 @btrfs_requeue_inode_defrag(%struct.TYPE_3__*, %struct.inode_defrag*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inode_defrag*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
