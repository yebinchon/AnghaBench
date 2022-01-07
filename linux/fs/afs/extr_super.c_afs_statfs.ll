; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i64, i32, i32 }
%struct.afs_super_info = type { i64 }
%struct.afs_fs_cursor = type { i32, i32, i32 }
%struct.afs_volume_status = type { i64, i32, i32 }
%struct.afs_vnode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.key = type { i32 }

@AFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@AFS_FS_CURSOR_NO_VSLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @afs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.afs_super_info*, align 8
  %7 = alloca %struct.afs_fs_cursor, align 4
  %8 = alloca %struct.afs_volume_status, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.afs_super_info* @AFS_FS_S(%struct.TYPE_4__* %14)
  store %struct.afs_super_info* %15, %struct.afs_super_info** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @d_inode(%struct.dentry* %16)
  %18 = call %struct.afs_vnode* @AFS_FS_I(i32 %17)
  store %struct.afs_vnode* %18, %struct.afs_vnode** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @AFS_BLOCK_SIZE, align 4
  %27 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @AFSNAMEMAX, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.afs_super_info*, %struct.afs_super_info** %6, align 8
  %34 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %43 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %115

44:                                               ; preds = %2
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %46 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.key* @afs_request_key(i32 %49)
  store %struct.key* %50, %struct.key** %10, align 8
  %51 = load %struct.key*, %struct.key** %10, align 8
  %52 = call i64 @IS_ERR(%struct.key* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.key*, %struct.key** %10, align 8
  %56 = call i32 @PTR_ERR(%struct.key* %55)
  store i32 %56, i32* %3, align 4
  br label %115

57:                                               ; preds = %44
  %58 = load i32, i32* @ERESTARTSYS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %61 = load %struct.key*, %struct.key** %10, align 8
  %62 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %7, %struct.afs_vnode* %60, %struct.key* %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load i32, i32* @AFS_FS_CURSOR_NO_VSLEEP, align 4
  %66 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %7, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %72, %64
  %70 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %74 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %73)
  %75 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = call i32 @afs_fs_get_volume_status(%struct.afs_fs_cursor* %7, %struct.afs_volume_status* %8)
  br label %69

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %7, i32 %79)
  %81 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %7)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %57
  %83 = load %struct.key*, %struct.key** %10, align 8
  %84 = call i32 @key_put(%struct.key* %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %8, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %95 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %102

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %104 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %8, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %105, %107
  %109 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %110 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %112 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %82
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %54, %37
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.afs_super_info* @AFS_FS_S(%struct.TYPE_4__*) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_get_volume_status(%struct.afs_fs_cursor*, %struct.afs_volume_status*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, i32) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
