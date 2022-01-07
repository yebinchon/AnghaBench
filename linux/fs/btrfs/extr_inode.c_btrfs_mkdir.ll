; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32 }
%struct.dentry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32*, i32*, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_7__ = type { %struct.btrfs_root* }

@S_IFDIR = common dso_local global i32 0, align 4
@btrfs_dir_inode_operations = common dso_local global i32 0, align 4
@btrfs_dir_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @btrfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %17)
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %24 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %23, i32 5)
  %25 = bitcast %struct.inode* %24 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %25, %struct.btrfs_trans_handle** %10, align 8
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %27 = bitcast %struct.btrfs_trans_handle* %26 to %struct.inode*
  %28 = call i64 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %32 = bitcast %struct.btrfs_trans_handle* %31 to %struct.inode*
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %4, align 4
  br label %136

34:                                               ; preds = %3
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %36 = call i32 @btrfs_find_free_ino(%struct.btrfs_root* %35, i32* %13)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %118

40:                                               ; preds = %34
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %42 = bitcast %struct.btrfs_trans_handle* %41 to %struct.inode*
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %53)
  %55 = call i32 @btrfs_ino(%struct.TYPE_7__* %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @S_IFDIR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.inode* @btrfs_new_inode(%struct.inode* %42, %struct.btrfs_root* %43, %struct.inode* %44, i32 %48, i32 %52, i32 %55, i32 %56, i32 %59, i32* %14)
  store %struct.inode* %60, %struct.inode** %9, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call i64 @IS_ERR(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %40
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.inode* %65)
  store i32 %66, i32* %12, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  br label %118

67:                                               ; preds = %40
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  store i32* @btrfs_dir_inode_operations, i32** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32* @btrfs_dir_file_operations, i32** %71, align 8
  %72 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %73 = bitcast %struct.btrfs_trans_handle* %72 to %struct.inode*
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = call i32 @btrfs_init_inode_security(%struct.inode* %73, %struct.inode* %74, %struct.inode* %75, %struct.TYPE_8__* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %118

82:                                               ; preds = %67
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %83)
  %85 = call i32 @btrfs_i_size_write(%struct.TYPE_7__* %84, i32 0)
  %86 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %87 = bitcast %struct.btrfs_trans_handle* %86 to %struct.inode*
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call i32 @btrfs_update_inode(%struct.inode* %87, %struct.btrfs_root* %88, %struct.inode* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %118

94:                                               ; preds = %82
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %96 = bitcast %struct.btrfs_trans_handle* %95 to %struct.inode*
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %99)
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @btrfs_add_link(%struct.inode* %96, %struct.TYPE_7__* %98, %struct.TYPE_7__* %100, i32 %104, i32 %108, i32 0, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  br label %118

114:                                              ; preds = %94
  %115 = load %struct.dentry*, %struct.dentry** %6, align 8
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = call i32 @d_instantiate_new(%struct.dentry* %115, %struct.inode* %116)
  br label %118

118:                                              ; preds = %114, %113, %93, %81, %64, %39
  %119 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %120 = bitcast %struct.btrfs_trans_handle* %119 to %struct.inode*
  %121 = call i32 @btrfs_end_transaction(%struct.inode* %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = icmp ne %struct.inode* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = call i32 @inode_dec_link_count(%struct.inode* %128)
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = call i32 @discard_new_inode(%struct.inode* %130)
  br label %132

132:                                              ; preds = %127, %124, %118
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %134 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %30
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_7__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root*, i32*) #1

declare dso_local %struct.inode* @btrfs_new_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_7__*) #1

declare dso_local i32 @btrfs_init_inode_security(%struct.inode*, %struct.inode*, %struct.inode*, %struct.TYPE_8__*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.inode*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_add_link(%struct.inode*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
