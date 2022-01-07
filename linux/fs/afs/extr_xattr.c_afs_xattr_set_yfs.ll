; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_set_yfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_set_yfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_fs_cursor = type { i32, i32 }
%struct.afs_status_cb = type { i64, i32 }
%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_acl = type { i64, i32 }
%struct.key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @afs_xattr_set_yfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_set_yfs(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.afs_fs_cursor, align 4
  %17 = alloca %struct.afs_status_cb*, align 8
  %18 = alloca %struct.afs_vnode*, align 8
  %19 = alloca %struct.afs_acl*, align 8
  %20 = alloca %struct.key*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %23)
  store %struct.afs_vnode* %24, %struct.afs_vnode** %18, align 8
  store %struct.afs_acl* null, %struct.afs_acl** %19, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @XATTR_CREATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %7
  %31 = load i8*, i8** %12, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %7
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %120

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call %struct.afs_status_cb* @kzalloc(i32 16, i32 %38)
  store %struct.afs_status_cb* %39, %struct.afs_status_cb** %17, align 8
  %40 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %41 = icmp ne %struct.afs_status_cb* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %118

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = add i64 16, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.afs_status_cb* @kmalloc(i32 %46, i32 %47)
  %49 = bitcast %struct.afs_status_cb* %48 to %struct.afs_acl*
  store %struct.afs_acl* %49, %struct.afs_acl** %19, align 8
  %50 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %51 = icmp ne %struct.afs_acl* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %115

53:                                               ; preds = %43
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %56 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %58 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @memcpy(i32 %59, i8* %60, i64 %61)
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.key* @afs_request_key(i32 %67)
  store %struct.key* %68, %struct.key** %20, align 8
  %69 = load %struct.key*, %struct.key** %20, align 8
  %70 = call i64 @IS_ERR(%struct.key* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load %struct.key*, %struct.key** %20, align 8
  %74 = call i32 @PTR_ERR(%struct.key* %73)
  store i32 %74, i32* %21, align 4
  br label %109

75:                                               ; preds = %53
  %76 = load i32, i32* @ERESTARTSYS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %21, align 4
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %79 = load %struct.key*, %struct.key** %20, align 8
  %80 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %16, %struct.afs_vnode* %78, %struct.key* %79, i32 1)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %75
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %84 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %22, align 4
  br label %87

87:                                               ; preds = %90, %82
  %88 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %92 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %91)
  %93 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %95 = bitcast %struct.afs_acl* %94 to %struct.afs_status_cb*
  %96 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %97 = call i32 @yfs_fs_store_opaque_acl2(%struct.afs_fs_cursor* %16, %struct.afs_status_cb* %95, %struct.afs_status_cb* %96)
  br label %87

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %16, i32 %100)
  %102 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %103 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %106 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %16, %struct.afs_vnode* %102, i32 %104, i32* %22, %struct.afs_status_cb* %105)
  %107 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %16)
  store i32 %107, i32* %21, align 4
  br label %108

108:                                              ; preds = %98, %75
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %111 = bitcast %struct.afs_acl* %110 to %struct.afs_status_cb*
  %112 = call i32 @kfree(%struct.afs_status_cb* %111)
  %113 = load %struct.key*, %struct.key** %20, align 8
  %114 = call i32 @key_put(%struct.key* %113)
  br label %115

115:                                              ; preds = %109, %52
  %116 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %117 = call i32 @kfree(%struct.afs_status_cb* %116)
  br label %118

118:                                              ; preds = %115, %42
  %119 = load i32, i32* %21, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %34
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local %struct.afs_status_cb* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @yfs_fs_store_opaque_acl2(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, i32) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
