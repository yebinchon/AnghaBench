; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.dentry = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_6__*, i32*, i32*, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.btrfs_root* }
%struct.TYPE_7__ = type { i32* }

@btrfs_file_operations = common dso_local global i32 0, align 4
@btrfs_file_inode_operations = common dso_local global i32 0, align 4
@btrfs_aops = common dso_local global i32 0, align 4
@btrfs_extent_io_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @btrfs_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %17)
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %10, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %24 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %23, i32 5)
  %25 = bitcast %struct.inode* %24 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %25, %struct.btrfs_trans_handle** %9, align 8
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %27 = bitcast %struct.btrfs_trans_handle* %26 to %struct.inode*
  %28 = call i64 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %32 = bitcast %struct.btrfs_trans_handle* %31 to %struct.inode*
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %4, align 4
  br label %122

34:                                               ; preds = %3
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %36 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %35, i32* %12)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %106

40:                                               ; preds = %34
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %42 = bitcast %struct.btrfs_trans_handle* %41 to %struct.inode*
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %45)
  %47 = call i32 @btrfs_ino(%struct.TYPE_8__* %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.inode* @btrfs_new_inode(%struct.inode* %42, %struct.btrfs_root* %43, %struct.inode* %44, i32* null, i32 0, i32 %47, i32 %48, i32 %49, i32* %13)
  store %struct.inode* %50, %struct.inode** %11, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i64 @IS_ERR(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.inode* %55)
  store i32 %56, i32* %14, align 4
  store %struct.inode* null, %struct.inode** %11, align 8
  br label %106

57:                                               ; preds = %40
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  store i32* @btrfs_file_operations, i32** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  store i32* @btrfs_file_inode_operations, i32** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32* @btrfs_aops, i32** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32* @btrfs_extent_io_ops, i32** %69, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %71 = bitcast %struct.btrfs_trans_handle* %70 to %struct.inode*
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call i32 @btrfs_init_inode_security(%struct.inode* %71, %struct.inode* %72, %struct.inode* %73, i32* null)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %106

78:                                               ; preds = %57
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %80 = bitcast %struct.btrfs_trans_handle* %79 to %struct.inode*
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %82 = load %struct.inode*, %struct.inode** %11, align 8
  %83 = call i32 @btrfs_update_inode(%struct.inode* %80, %struct.btrfs_root* %81, %struct.inode* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %106

87:                                               ; preds = %78
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %89 = bitcast %struct.btrfs_trans_handle* %88 to %struct.inode*
  %90 = load %struct.inode*, %struct.inode** %11, align 8
  %91 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %90)
  %92 = call i32 @btrfs_orphan_add(%struct.inode* %89, %struct.TYPE_8__* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = call i32 @set_nlink(%struct.inode* %97, i32 1)
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = call i32 @d_tmpfile(%struct.dentry* %99, %struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = call i32 @unlock_new_inode(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = call i32 @mark_inode_dirty(%struct.inode* %104)
  br label %106

106:                                              ; preds = %96, %95, %86, %77, %54, %39
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %108 = bitcast %struct.btrfs_trans_handle* %107 to %struct.inode*
  %109 = call i32 @btrfs_end_transaction(%struct.inode* %108)
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = icmp ne %struct.inode* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.inode*, %struct.inode** %11, align 8
  %117 = call i32 @discard_new_inode(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %112, %106
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %120 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %30
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_8__*) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @btrfs_update_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_orphan_add(%struct.inode*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @d_tmpfile(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
