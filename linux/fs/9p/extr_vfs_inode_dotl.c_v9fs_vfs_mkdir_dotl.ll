; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_mkdir_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_mkdir_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type { i32, i32 }
%struct.p9_qid = type { i32 }
%struct.posix_acl = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name %pd\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to get acl values in mkdir %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @v9fs_vfs_mkdir_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mkdir_dotl(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.p9_qid, align 4
  %16 = alloca %struct.posix_acl*, align 8
  %17 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %9, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %10, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %16, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %17, align 8
  %18 = load i32, i32* @P9_DEBUG_VFS, align 4
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 (i32, i8*, ...) @p9_debug(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.dentry* %19)
  store i32 0, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = bitcast %struct.inode* %21 to %struct.p9_fid*
  %23 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %22)
  store %struct.v9fs_session_info* %23, %struct.v9fs_session_info** %8, align 8
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_ISGID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @S_ISGID, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %38)
  store %struct.p9_fid* %39, %struct.p9_fid** %10, align 8
  %40 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %41 = call i64 @IS_ERR(%struct.p9_fid* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.p9_fid* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @P9_DEBUG_VFS, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @p9_debug(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store %struct.p9_fid* null, %struct.p9_fid** %10, align 8
  br label %166

49:                                               ; preds = %37
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = bitcast %struct.inode* %50 to %struct.p9_fid*
  %52 = call i32 @v9fs_get_fsgid_for_create(%struct.p9_fid* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = bitcast %struct.inode* %54 to %struct.p9_fid*
  %56 = call i32 @v9fs_acl_mode(%struct.p9_fid* %55, i32* %13, %struct.posix_acl** %16, %struct.posix_acl** %17)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @P9_DEBUG_VFS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @p9_debug(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %166

63:                                               ; preds = %49
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %12, align 8
  %68 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @p9_client_mkdir_dotl(%struct.p9_fid* %68, i8* %69, i32 %70, i32 %71, %struct.p9_qid* %15)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %166

76:                                               ; preds = %63
  %77 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %78 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %77, i32 1, i8** %12, i32 1)
  store %struct.p9_fid* %78, %struct.p9_fid** %9, align 8
  %79 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %80 = call i64 @IS_ERR(%struct.p9_fid* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %84 = call i32 @PTR_ERR(%struct.p9_fid* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @P9_DEBUG_VFS, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, ...) @p9_debug(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store %struct.p9_fid* null, %struct.p9_fid** %9, align 8
  br label %166

88:                                               ; preds = %76
  %89 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %90 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CACHE_LOOSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %96 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CACHE_FSCACHE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %94, %88
  %101 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %102 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %101, %struct.p9_fid* %102, i32 %105)
  %107 = bitcast %struct.p9_fid* %106 to %struct.inode*
  store %struct.inode* %107, %struct.inode** %14, align 8
  %108 = load %struct.inode*, %struct.inode** %14, align 8
  %109 = bitcast %struct.inode* %108 to %struct.p9_fid*
  %110 = call i64 @IS_ERR(%struct.p9_fid* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = load %struct.inode*, %struct.inode** %14, align 8
  %114 = bitcast %struct.inode* %113 to %struct.p9_fid*
  %115 = call i32 @PTR_ERR(%struct.p9_fid* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* @P9_DEBUG_VFS, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i32, i8*, ...) @p9_debug(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %166

119:                                              ; preds = %100
  %120 = load %struct.dentry*, %struct.dentry** %5, align 8
  %121 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %122 = call i32 @v9fs_fid_add(%struct.dentry* %120, %struct.p9_fid* %121)
  %123 = load %struct.inode*, %struct.inode** %14, align 8
  %124 = bitcast %struct.inode* %123 to %struct.p9_fid*
  %125 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %126 = load %struct.posix_acl*, %struct.posix_acl** %16, align 8
  %127 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %128 = call i32 @v9fs_set_create_acl(%struct.p9_fid* %124, %struct.p9_fid* %125, %struct.posix_acl* %126, %struct.posix_acl* %127)
  %129 = load %struct.dentry*, %struct.dentry** %5, align 8
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = bitcast %struct.inode* %130 to %struct.p9_fid*
  %132 = call i32 @d_instantiate(%struct.dentry* %129, %struct.p9_fid* %131)
  store %struct.p9_fid* null, %struct.p9_fid** %9, align 8
  store i32 0, i32* %7, align 4
  br label %159

133:                                              ; preds = %94
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call %struct.p9_fid* @v9fs_get_inode(i32 %136, i32 %137, i32 0)
  %139 = bitcast %struct.p9_fid* %138 to %struct.inode*
  store %struct.inode* %139, %struct.inode** %14, align 8
  %140 = load %struct.inode*, %struct.inode** %14, align 8
  %141 = bitcast %struct.inode* %140 to %struct.p9_fid*
  %142 = call i64 @IS_ERR(%struct.p9_fid* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load %struct.inode*, %struct.inode** %14, align 8
  %146 = bitcast %struct.inode* %145 to %struct.p9_fid*
  %147 = call i32 @PTR_ERR(%struct.p9_fid* %146)
  store i32 %147, i32* %7, align 4
  br label %166

148:                                              ; preds = %133
  %149 = load %struct.inode*, %struct.inode** %14, align 8
  %150 = bitcast %struct.inode* %149 to %struct.p9_fid*
  %151 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %152 = load %struct.posix_acl*, %struct.posix_acl** %16, align 8
  %153 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %154 = call i32 @v9fs_set_create_acl(%struct.p9_fid* %150, %struct.p9_fid* %151, %struct.posix_acl* %152, %struct.posix_acl* %153)
  %155 = load %struct.dentry*, %struct.dentry** %5, align 8
  %156 = load %struct.inode*, %struct.inode** %14, align 8
  %157 = bitcast %struct.inode* %156 to %struct.p9_fid*
  %158 = call i32 @d_instantiate(%struct.dentry* %155, %struct.p9_fid* %157)
  br label %159

159:                                              ; preds = %148, %119
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = bitcast %struct.inode* %160 to %struct.p9_fid*
  %162 = call i32 @inc_nlink(%struct.p9_fid* %161)
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = bitcast %struct.inode* %163 to %struct.p9_fid*
  %165 = call i32 @v9fs_invalidate_inode_attr(%struct.p9_fid* %164)
  br label %166

166:                                              ; preds = %159, %144, %112, %82, %75, %59, %43
  %167 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %168 = icmp ne %struct.p9_fid* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %171 = call i32 @p9_client_clunk(%struct.p9_fid* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.posix_acl*, %struct.posix_acl** %16, align 8
  %174 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %175 = call i32 @v9fs_put_acl(%struct.posix_acl* %173, %struct.posix_acl* %174)
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_get_fsgid_for_create(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_acl_mode(%struct.p9_fid*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @p9_client_mkdir_dotl(%struct.p9_fid*, i8*, i32, i32, %struct.p9_qid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @v9fs_set_create_acl(%struct.p9_fid*, %struct.p9_fid*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_get_inode(i32, i32, i32) #1

declare dso_local i32 @inc_nlink(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_put_acl(%struct.posix_acl*, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
