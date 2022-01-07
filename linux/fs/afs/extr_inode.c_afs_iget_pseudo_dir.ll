; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget_pseudo_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget_pseudo_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32*, i32*, i64, i32 }
%struct.super_block = type { %struct.afs_super_info* }
%struct.afs_super_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.afs_vnode = type { i32 }
%struct.afs_iget_data = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@afs_iget_pseudo_dir.afs_autocell_ino = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_iget5_pseudo_dir_test = common dso_local global i32 0, align 4
@afs_iget5_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"GOT INODE %p { ino=%lu, vl=%llx, vn=%llx, u=%x }\00", align 1
@I_NEW = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@afs_dynroot_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@afs_autocell_inode_operations = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@AFS_VNODE_PSEUDODIR = common dso_local global i32 0, align 4
@AFS_VNODE_MOUNTPOINT = common dso_local global i32 0, align 4
@S_AUTOMOUNT = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @afs_iget_pseudo_dir(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_super_info*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.afs_iget_data, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.afs_iget_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.afs_super_info*, %struct.afs_super_info** %13, align 8
  store %struct.afs_super_info* %14, %struct.afs_super_info** %6, align 8
  %15 = load %struct.afs_super_info*, %struct.afs_super_info** %6, align 8
  %16 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.afs_super_info*, %struct.afs_super_info** %6, align 8
  %21 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 1
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.afs_super_info*, %struct.afs_super_info** %6, align 8
  %25 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %19, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %45

39:                                               ; preds = %31
  %40 = call i32 @atomic_inc_return(i32* @afs_iget_pseudo_dir.afs_autocell_ino)
  %41 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @afs_iget5_pseudo_dir_test, align 4
  %51 = load i32, i32* @afs_iget5_set, align 4
  %52 = call %struct.inode* @iget5_locked(%struct.super_block* %46, i32 %49, i32 %50, i32 %51, %struct.afs_iget_data* %9)
  store %struct.inode* %52, %struct.inode** %8, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = icmp ne %struct.inode* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.inode* @ERR_PTR(i32 %58)
  store %struct.inode* %59, %struct.inode** %3, align 8
  br label %155

60:                                               ; preds = %45
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %9, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %61, i32 %64, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %75)
  store %struct.afs_vnode* %76, %struct.afs_vnode** %7, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I_NEW, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 12
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @S_IFDIR, align 4
  %89 = load i32, i32* @S_IRUGO, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @S_IXUGO, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %60
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 10
  store i32* @afs_dynroot_inode_operations, i32** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 11
  store i32* @simple_dir_operations, i32** %101, align 8
  br label %105

102:                                              ; preds = %60
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 10
  store i32* @afs_autocell_inode_operations, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @set_nlink(%struct.inode* %106, i32 2)
  %108 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @current_time(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 6
  store i32 %115, i32* %119, align 4
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 7
  store i32 %115, i32* %121, align 8
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = call i32 @inode_set_iversion_raw(%struct.inode* %124, i32 0)
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @AFS_VNODE_PSEUDODIR, align 4
  %129 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %130 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %129, i32 0, i32 0
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %105
  %135 = load i32, i32* @AFS_VNODE_MOUNTPOINT, align 4
  %136 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %137 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %136, i32 0, i32 0
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  %139 = load i32, i32* @S_AUTOMOUNT, align 4
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %134, %105
  %145 = load i32, i32* @S_NOATIME, align 4
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = call i32 @unlock_new_inode(%struct.inode* %150)
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %152)
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %154, %struct.inode** %3, align 8
  br label %155

155:                                              ; preds = %144, %55
  %156 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_enter(i8*) #2

declare dso_local i32 @atomic_inc_return(i32*) #2

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.afs_iget_data*) #2

declare dso_local i32 @_leave(i8*, ...) #2

declare dso_local %struct.inode* @ERR_PTR(i32) #2

declare dso_local i32 @_debug(i8*, %struct.inode*, i32, i32, i32, i32) #2

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @set_nlink(%struct.inode*, i32) #2

declare dso_local i32 @current_time(%struct.inode*) #2

declare dso_local i32 @inode_set_iversion_raw(%struct.inode*, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @unlock_new_inode(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
