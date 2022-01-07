; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_set_acl.c"
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
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @afs_xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_set_acl(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
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
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %116

33:                                               ; preds = %7
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call %struct.afs_status_cb* @kzalloc(i32 16, i32 %34)
  store %struct.afs_status_cb* %35, %struct.afs_status_cb** %17, align 8
  %36 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %37 = icmp ne %struct.afs_status_cb* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %114

39:                                               ; preds = %33
  %40 = load i64, i64* %14, align 8
  %41 = add i64 16, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.afs_status_cb* @kmalloc(i32 %42, i32 %43)
  %45 = bitcast %struct.afs_status_cb* %44 to %struct.afs_acl*
  store %struct.afs_acl* %45, %struct.afs_acl** %19, align 8
  %46 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %47 = icmp ne %struct.afs_acl* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %111

49:                                               ; preds = %39
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %51 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.key* @afs_request_key(i32 %54)
  store %struct.key* %55, %struct.key** %20, align 8
  %56 = load %struct.key*, %struct.key** %20, align 8
  %57 = call i64 @IS_ERR(%struct.key* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.key*, %struct.key** %20, align 8
  %61 = call i32 @PTR_ERR(%struct.key* %60)
  store i32 %61, i32* %21, align 4
  br label %107

62:                                               ; preds = %49
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %65 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %67 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @memcpy(i32 %68, i8* %69, i64 %70)
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %21, align 4
  %74 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %75 = load %struct.key*, %struct.key** %20, align 8
  %76 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %16, %struct.afs_vnode* %74, %struct.key* %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %62
  %79 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %80 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %22, align 4
  br label %83

83:                                               ; preds = %86, %78
  %84 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %16)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %88 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %87)
  %89 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %91 = bitcast %struct.afs_acl* %90 to %struct.afs_status_cb*
  %92 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %93 = call i32 @afs_fs_store_acl(%struct.afs_fs_cursor* %16, %struct.afs_status_cb* %91, %struct.afs_status_cb* %92)
  br label %83

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %16, i32 %96)
  %98 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  %99 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %102 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %16, %struct.afs_vnode* %98, i32 %100, i32* %22, %struct.afs_status_cb* %101)
  %103 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %16)
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %94, %62
  %105 = load %struct.key*, %struct.key** %20, align 8
  %106 = call i32 @key_put(%struct.key* %105)
  br label %107

107:                                              ; preds = %104, %59
  %108 = load %struct.afs_acl*, %struct.afs_acl** %19, align 8
  %109 = bitcast %struct.afs_acl* %108 to %struct.afs_status_cb*
  %110 = call i32 @kfree(%struct.afs_status_cb* %109)
  br label %111

111:                                              ; preds = %107, %48
  %112 = load %struct.afs_status_cb*, %struct.afs_status_cb** %17, align 8
  %113 = call i32 @kfree(%struct.afs_status_cb* %112)
  br label %114

114:                                              ; preds = %111, %38
  %115 = load i32, i32* %21, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %30
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local %struct.afs_status_cb* @kmalloc(i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_store_acl(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, i32) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
