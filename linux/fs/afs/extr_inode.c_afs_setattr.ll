; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.afs_fs_cursor = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"{%llx:%llu},{n=%pd},%x\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c" = 0 [unsupported]\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.afs_fs_cursor, align 4
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call %struct.afs_vnode* @AFS_FS_I(i32 %13)
  store %struct.afs_vnode* %14, %struct.afs_vnode** %8, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_enter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, %struct.dentry* %25, i32 %28)
  %30 = load %struct.iattr*, %struct.iattr** %5, align 8
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATTR_SIZE, align 4
  %34 = load i32, i32* @ATTR_MODE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATTR_UID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATTR_GID, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ATTR_MTIME, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %32, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %2
  %45 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

46:                                               ; preds = %2
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %47)
  store %struct.afs_status_cb* %48, %struct.afs_status_cb** %7, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %50 = icmp ne %struct.afs_status_cb* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %146

52:                                               ; preds = %46
  %53 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %54 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISREG(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @filemap_write_and_wait(i32 %63)
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.iattr*, %struct.iattr** %5, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATTR_FILE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.iattr*, %struct.iattr** %5, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.key* @afs_file_key(i32 %75)
  store %struct.key* %76, %struct.key** %9, align 8
  br label %91

77:                                               ; preds = %65
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %79 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.key* @afs_request_key(i32 %82)
  store %struct.key* %83, %struct.key** %9, align 8
  %84 = load %struct.key*, %struct.key** %9, align 8
  %85 = call i64 @IS_ERR(%struct.key* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load %struct.key*, %struct.key** %9, align 8
  %89 = call i32 @PTR_ERR(%struct.key* %88)
  store i32 %89, i32* %10, align 4
  br label %143

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i32, i32* @ERESTARTSYS, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %95 = load %struct.key*, %struct.key** %9, align 8
  %96 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %6, %struct.afs_vnode* %94, %struct.key* %95, i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %91
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %11, align 4
  %103 = load %struct.iattr*, %struct.iattr** %5, align 8
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ATTR_SIZE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %98
  br label %113

113:                                              ; preds = %116, %112
  %114 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %6)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %118 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %117)
  %119 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %6, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.iattr*, %struct.iattr** %5, align 8
  %121 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %122 = call i32 @afs_fs_setattr(%struct.afs_fs_cursor* %6, %struct.iattr* %120, %struct.afs_status_cb* %121)
  br label %113

123:                                              ; preds = %113
  %124 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %125 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %6, %struct.afs_vnode* %124)
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %127 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %130 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %6, %struct.afs_vnode* %126, i32 %128, i32* %11, %struct.afs_status_cb* %129)
  %131 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %6)
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %123, %91
  %133 = load %struct.iattr*, %struct.iattr** %5, align 8
  %134 = getelementptr inbounds %struct.iattr, %struct.iattr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATTR_FILE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load %struct.key*, %struct.key** %9, align 8
  %141 = call i32 @key_put(%struct.key* %140)
  br label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %142, %87
  %144 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %145 = call i32 @kfree(%struct.afs_status_cb* %144)
  br label %146

146:                                              ; preds = %143, %51
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %44
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @_enter(i8*, i32, i32, %struct.dentry*, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local %struct.key* @afs_file_key(i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_setattr(%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, %struct.afs_vnode*) #1

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
