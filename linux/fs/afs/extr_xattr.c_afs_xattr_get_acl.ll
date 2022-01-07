; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_fs_cursor = type { i32, i32 }
%struct.afs_status_cb = type { i32, i32 }
%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_acl = type { i32, i32 }
%struct.key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @afs_xattr_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_get_acl(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.xattr_handler*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.afs_fs_cursor, align 4
  %14 = alloca %struct.afs_status_cb*, align 8
  %15 = alloca %struct.afs_vnode*, align 8
  %16 = alloca %struct.afs_acl*, align 8
  %17 = alloca %struct.key*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %20)
  store %struct.afs_vnode* %21, %struct.afs_vnode** %15, align 8
  store %struct.afs_acl* null, %struct.afs_acl** %16, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.afs_status_cb* @kzalloc(i32 8, i32 %24)
  store %struct.afs_status_cb* %25, %struct.afs_status_cb** %14, align 8
  %26 = load %struct.afs_status_cb*, %struct.afs_status_cb** %14, align 8
  %27 = icmp ne %struct.afs_status_cb* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  br label %114

29:                                               ; preds = %6
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.key* @afs_request_key(i32 %34)
  store %struct.key* %35, %struct.key** %17, align 8
  %36 = load %struct.key*, %struct.key** %17, align 8
  %37 = call i64 @IS_ERR(%struct.key* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.key*, %struct.key** %17, align 8
  %41 = call i32 @PTR_ERR(%struct.key* %40)
  store i32 %41, i32* %18, align 4
  br label %111

42:                                               ; preds = %29
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %18, align 4
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %46 = load %struct.key*, %struct.key** %17, align 8
  %47 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %13, %struct.afs_vnode* %45, %struct.key* %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %51 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %19, align 4
  br label %54

54:                                               ; preds = %57, %49
  %55 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %59 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %58)
  %60 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.afs_status_cb*, %struct.afs_status_cb** %14, align 8
  %62 = call %struct.afs_status_cb* @afs_fs_fetch_acl(%struct.afs_fs_cursor* %13, %struct.afs_status_cb* %61)
  %63 = bitcast %struct.afs_status_cb* %62 to %struct.afs_acl*
  store %struct.afs_acl* %63, %struct.afs_acl** %16, align 8
  br label %54

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %13, i32 %66)
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %69 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.afs_status_cb*, %struct.afs_status_cb** %14, align 8
  %72 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %13, %struct.afs_vnode* %68, i32 %70, i32* %19, %struct.afs_status_cb* %71)
  %73 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %13)
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %64, %42
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load %struct.afs_acl*, %struct.afs_acl** %16, align 8
  %79 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %18, align 4
  %81 = load i64, i64* %12, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.afs_acl*, %struct.afs_acl** %16, align 8
  %85 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %12, align 8
  %89 = icmp ule i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.afs_acl*, %struct.afs_acl** %16, align 8
  %93 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.afs_acl*, %struct.afs_acl** %16, align 8
  %96 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @memcpy(i8* %91, i32 %94, i64 %98)
  br label %103

100:                                              ; preds = %83
  %101 = load i32, i32* @ERANGE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %100, %90
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.afs_acl*, %struct.afs_acl** %16, align 8
  %106 = bitcast %struct.afs_acl* %105 to %struct.afs_status_cb*
  %107 = call i32 @kfree(%struct.afs_status_cb* %106)
  br label %108

108:                                              ; preds = %104, %74
  %109 = load %struct.key*, %struct.key** %17, align 8
  %110 = call i32 @key_put(%struct.key* %109)
  br label %111

111:                                              ; preds = %108, %39
  %112 = load %struct.afs_status_cb*, %struct.afs_status_cb** %14, align 8
  %113 = call i32 @kfree(%struct.afs_status_cb* %112)
  br label %114

114:                                              ; preds = %111, %28
  %115 = load i32, i32* %18, align 4
  ret i32 %115
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local %struct.afs_status_cb* @afs_fs_fetch_acl(%struct.afs_fs_cursor*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, i32) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
