; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.dentry* }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.btrfs_root* }

@EXDEV = common dso_local global i32 0, align 4
@BTRFS_LINK_MAX = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@BTRFS_INODE_COPY_EVERYTHING = common dso_local global i32 0, align 4
@BTRFS_NEED_TRANS_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @btrfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %9, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %25)
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %11, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %33, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %30, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EXDEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %163

42:                                               ; preds = %3
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BTRFS_LINK_MAX, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EMLINK, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %163

51:                                               ; preds = %42
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %52)
  %54 = call i32 @btrfs_set_inode_index(%struct.TYPE_9__* %53, i32* %12)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %145

58:                                               ; preds = %51
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 5, i32 6
  %66 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %59, i32 %65)
  store %struct.btrfs_trans_handle* %66, %struct.btrfs_trans_handle** %8, align 8
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %68 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %72 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %71)
  store i32 %72, i32* %13, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %8, align 8
  br label %145

73:                                               ; preds = %58
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = call i32 @inc_nlink(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = call i32 @inode_inc_iversion(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i32 @current_time(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @ihold(%struct.inode* %85)
  %87 = load i32, i32* @BTRFS_INODE_COPY_EVERYTHING, align 4
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = call i32 @set_bit(i32 %87, i32* %90)
  %92 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %93)
  %95 = load %struct.dentry*, %struct.dentry** %7, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %96)
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @btrfs_add_nondir(%struct.btrfs_trans_handle* %92, %struct.TYPE_9__* %94, %struct.dentry* %95, %struct.TYPE_9__* %97, i32 1, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  store i32 1, i32* %14, align 4
  br label %144

103:                                              ; preds = %73
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = load %struct.dentry*, %struct.dentry** %105, align 8
  store %struct.dentry* %106, %struct.dentry** %15, align 8
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %107, %struct.btrfs_root* %108, %struct.inode* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %145

114:                                              ; preds = %103
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %121)
  %123 = call i32 @btrfs_orphan_del(%struct.btrfs_trans_handle* %120, %struct.TYPE_9__* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %145

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %114
  %129 = load %struct.dentry*, %struct.dentry** %7, align 8
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call i32 @d_instantiate(%struct.dentry* %129, %struct.inode* %130)
  %132 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %133)
  %135 = load %struct.dentry*, %struct.dentry** %15, align 8
  %136 = call i32 @btrfs_log_new_name(%struct.btrfs_trans_handle* %132, %struct.TYPE_9__* %134, i32* null, %struct.dentry* %135, i32 1, i32* null)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @BTRFS_NEED_TRANS_COMMIT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %142 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %141)
  store i32 %142, i32* %13, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %8, align 8
  br label %143

143:                                              ; preds = %140, %128
  br label %144

144:                                              ; preds = %143, %102
  br label %145

145:                                              ; preds = %144, %126, %113, %70, %57
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %147 = icmp ne %struct.btrfs_trans_handle* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %150 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.inode*, %struct.inode** %10, align 8
  %156 = call i32 @inode_dec_link_count(%struct.inode* %155)
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = call i32 @iput(%struct.inode* %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %161 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %160)
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %48, %39
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_9__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @btrfs_set_inode_index(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_add_nondir(%struct.btrfs_trans_handle*, %struct.TYPE_9__*, %struct.dentry*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_orphan_del(%struct.btrfs_trans_handle*, %struct.TYPE_9__*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_log_new_name(%struct.btrfs_trans_handle*, %struct.TYPE_9__*, i32*, %struct.dentry*, i32, i32*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
