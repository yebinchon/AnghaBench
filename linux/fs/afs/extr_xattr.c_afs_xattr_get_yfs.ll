; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_yfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_yfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_fs_cursor = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.yfs_acl = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"acl_inherited\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"acl_num_cleaned\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vol_acl\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@YFS_ACL_WANT_ACL = common dso_local global i32 0, align 4
@YFS_ACL_WANT_VOL_ACL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @afs_xattr_get_yfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_get_yfs(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.afs_fs_cursor, align 4
  %15 = alloca %struct.afs_status_cb*, align 8
  %16 = alloca %struct.afs_vnode*, align 8
  %17 = alloca %struct.yfs_acl*, align 8
  %18 = alloca %struct.key*, align 8
  %19 = alloca [16 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %25)
  store %struct.afs_vnode* %26, %struct.afs_vnode** %16, align 8
  store %struct.yfs_acl* null, %struct.yfs_acl** %17, align 8
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %23, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %21, align 4
  br label %54

33:                                               ; preds = %6
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %21, align 4
  br label %53

38:                                               ; preds = %33
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 2, i32* %21, align 4
  br label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 3, i32* %21, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %206

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 32, i32 %55)
  %57 = bitcast i8* %56 to %struct.yfs_acl*
  store %struct.yfs_acl* %57, %struct.yfs_acl** %17, align 8
  %58 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %59 = icmp ne %struct.yfs_acl* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %204

61:                                               ; preds = %54
  %62 = load i32, i32* %21, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @YFS_ACL_WANT_ACL, align 4
  %66 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %67 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %80

70:                                               ; preds = %61
  %71 = load i32, i32* %21, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @YFS_ACL_WANT_VOL_ACL, align 4
  %75 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %76 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %70
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i32, i32* @GFP_NOFS, align 4
  %82 = call i8* @kzalloc(i32 4, i32 %81)
  %83 = bitcast i8* %82 to %struct.afs_status_cb*
  store %struct.afs_status_cb* %83, %struct.afs_status_cb** %15, align 8
  %84 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %85 = icmp ne %struct.afs_status_cb* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %201

87:                                               ; preds = %80
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.key* @afs_request_key(i32 %92)
  store %struct.key* %93, %struct.key** %18, align 8
  %94 = load %struct.key*, %struct.key** %18, align 8
  %95 = call i64 @IS_ERR(%struct.key* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.key*, %struct.key** %18, align 8
  %99 = call i32 @PTR_ERR(%struct.key* %98)
  store i32 %99, i32* %23, align 4
  br label %198

100:                                              ; preds = %87
  %101 = load i32, i32* @ERESTARTSYS, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %23, align 4
  %103 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %104 = load %struct.key*, %struct.key** %18, align 8
  %105 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %14, %struct.afs_vnode* %103, %struct.key* %104, i32 1)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %109 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %115, %107
  %113 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %14)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %117 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %116)
  %118 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %14, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %120 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %121 = call i32 @yfs_fs_fetch_opaque_acl(%struct.afs_fs_cursor* %14, %struct.yfs_acl* %119, %struct.afs_status_cb* %120)
  br label %112

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %14, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %14, i32 %124)
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %127 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %14, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %130 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %14, %struct.afs_vnode* %126, i32 %128, i32* %24, %struct.afs_status_cb* %129)
  %131 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %14)
  store i32 %131, i32* %23, align 4
  br label %132

132:                                              ; preds = %122, %100
  %133 = load i32, i32* %23, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %195

136:                                              ; preds = %132
  %137 = load i32, i32* %21, align 4
  switch i32 %137, label %174 [
    i32 0, label %138
    i32 1, label %149
    i32 2, label %156
    i32 3, label %163
  ]

138:                                              ; preds = %136
  %139 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %140 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %20, align 8
  %144 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %145 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %144, i32 0, i32 3
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %22, align 4
  br label %177

149:                                              ; preds = %136
  %150 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  store i8* %150, i8** %20, align 8
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %152 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %153 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @snprintf(i8* %151, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  store i32 %155, i32* %22, align 4
  br label %177

156:                                              ; preds = %136
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  store i8* %157, i8** %20, align 8
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %159 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %160 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @snprintf(i8* %158, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  store i32 %162, i32* %22, align 4
  br label %177

163:                                              ; preds = %136
  %164 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %165 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %20, align 8
  %169 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %170 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %169, i32 0, i32 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %22, align 4
  br label %177

174:                                              ; preds = %136
  %175 = load i32, i32* @EOPNOTSUPP, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %23, align 4
  br label %195

177:                                              ; preds = %163, %156, %149, %138
  %178 = load i32, i32* %22, align 4
  store i32 %178, i32* %23, align 4
  %179 = load i64, i64* %13, align 8
  %180 = icmp ugt i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i32, i32* %22, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %13, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* @ERANGE, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %23, align 4
  br label %195

189:                                              ; preds = %181
  %190 = load i8*, i8** %12, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %22, align 4
  %193 = call i32 @memcpy(i8* %190, i8* %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %177
  br label %195

195:                                              ; preds = %194, %186, %174, %135
  %196 = load %struct.key*, %struct.key** %18, align 8
  %197 = call i32 @key_put(%struct.key* %196)
  br label %198

198:                                              ; preds = %195, %97
  %199 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %200 = call i32 @kfree(%struct.afs_status_cb* %199)
  br label %201

201:                                              ; preds = %198, %86
  %202 = load %struct.yfs_acl*, %struct.yfs_acl** %17, align 8
  %203 = call i32 @yfs_free_opaque_acl(%struct.yfs_acl* %202)
  br label %204

204:                                              ; preds = %201, %60
  %205 = load i32, i32* %23, align 4
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %204, %48
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @yfs_fs_fetch_opaque_acl(%struct.afs_fs_cursor*, %struct.yfs_acl*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, i32) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @yfs_free_opaque_acl(%struct.yfs_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
