; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32, i32*, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@btrfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @btrfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_trans_handle*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %19)
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  store %struct.btrfs_root* %24, %struct.btrfs_root** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %26 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %25, i32 5)
  %27 = bitcast %struct.inode* %26 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %27, %struct.btrfs_trans_handle** %11, align 8
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %29 = bitcast %struct.btrfs_trans_handle* %28 to %struct.inode*
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %34 = bitcast %struct.btrfs_trans_handle* %33 to %struct.inode*
  %35 = call i32 @PTR_ERR(%struct.inode* %34)
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %4
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %38 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %37, i32* %15)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %108

42:                                               ; preds = %36
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %44 = bitcast %struct.btrfs_trans_handle* %43 to %struct.inode*
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %55)
  %57 = call i32 @btrfs_ino(%struct.TYPE_6__* %56)
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.inode* @btrfs_new_inode(%struct.inode* %44, %struct.btrfs_root* %45, %struct.inode* %46, i32 %50, i32 %54, i32 %57, i32 %58, i32 %59, i32* %16)
  store %struct.inode* %60, %struct.inode** %13, align 8
  %61 = load %struct.inode*, %struct.inode** %13, align 8
  %62 = call i64 @IS_ERR(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %42
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = call i32 @PTR_ERR(%struct.inode* %65)
  store i32 %66, i32* %14, align 4
  store %struct.inode* null, %struct.inode** %13, align 8
  br label %108

67:                                               ; preds = %42
  %68 = load %struct.inode*, %struct.inode** %13, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  store i32* @btrfs_special_inode_operations, i32** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = load %struct.inode*, %struct.inode** %13, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @init_special_inode(%struct.inode* %70, i32 %73, i32 %74)
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %77 = bitcast %struct.btrfs_trans_handle* %76 to %struct.inode*
  %78 = load %struct.inode*, %struct.inode** %13, align 8
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load %struct.dentry*, %struct.dentry** %7, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = call i32 @btrfs_init_inode_security(%struct.inode* %77, %struct.inode* %78, %struct.inode* %79, %struct.TYPE_7__* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %108

86:                                               ; preds = %67
  %87 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %88 = bitcast %struct.btrfs_trans_handle* %87 to %struct.inode*
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %89)
  %91 = load %struct.dentry*, %struct.dentry** %7, align 8
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %92)
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @btrfs_add_nondir(%struct.inode* %88, %struct.TYPE_6__* %90, %struct.dentry* %91, %struct.TYPE_6__* %93, i32 0, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %101 = bitcast %struct.btrfs_trans_handle* %100 to %struct.inode*
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %103 = load %struct.inode*, %struct.inode** %13, align 8
  %104 = call i32 @btrfs_update_inode(%struct.inode* %101, %struct.btrfs_root* %102, %struct.inode* %103)
  %105 = load %struct.dentry*, %struct.dentry** %7, align 8
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call i32 @d_instantiate_new(%struct.dentry* %105, %struct.inode* %106)
  br label %108

108:                                              ; preds = %99, %98, %85, %64, %41
  %109 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %110 = bitcast %struct.btrfs_trans_handle* %109 to %struct.inode*
  %111 = call i32 @btrfs_end_transaction(%struct.inode* %110)
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %113 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %112)
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.inode*, %struct.inode** %13, align 8
  %118 = icmp ne %struct.inode* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.inode*, %struct.inode** %13, align 8
  %121 = call i32 @inode_dec_link_count(%struct.inode* %120)
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = call i32 @discard_new_inode(%struct.inode* %122)
  br label %124

124:                                              ; preds = %119, %116, %108
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %32
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_6__*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*, %struct.TYPE_7__*) #1

declare dso_local i32 @btrfs_add_nondir(%struct.inode*, %struct.TYPE_6__*, %struct.dentry*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
