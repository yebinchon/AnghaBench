; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"p9_client_fcreate failed %d\0A\00", align 1
@P9_DMLINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_fid* (%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i8*, i32, i32)* @v9fs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %0, %struct.inode* %1, %struct.dentry* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.p9_fid*, align 8
  %17 = alloca %struct.p9_fid*, align 8
  %18 = alloca %struct.p9_fid*, align 8
  %19 = alloca %struct.inode*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @P9_DEBUG_VFS, align 4
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call i32 (i32, i8*, ...) @p9_debug(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.dentry* %21)
  store i32 0, i32* %14, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %27)
  store %struct.p9_fid* %28, %struct.p9_fid** %16, align 8
  %29 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %30 = call i64 @IS_ERR(%struct.p9_fid* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %6
  %33 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %34 = call i32 @PTR_ERR(%struct.p9_fid* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* @P9_DEBUG_VFS, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 (i32, i8*, ...) @p9_debug(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.p9_fid* @ERR_PTR(i32 %38)
  store %struct.p9_fid* %39, %struct.p9_fid** %7, align 8
  br label %128

40:                                               ; preds = %6
  %41 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %42 = call %struct.p9_fid* @clone_fid(%struct.p9_fid* %41)
  store %struct.p9_fid* %42, %struct.p9_fid** %17, align 8
  %43 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %44 = call i64 @IS_ERR(%struct.p9_fid* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %48 = call i32 @PTR_ERR(%struct.p9_fid* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @P9_DEBUG_VFS, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 (i32, i8*, ...) @p9_debug(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call %struct.p9_fid* @ERR_PTR(i32 %52)
  store %struct.p9_fid* %53, %struct.p9_fid** %7, align 8
  br label %128

54:                                               ; preds = %40
  %55 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @p9_client_fcreate(%struct.p9_fid* %55, i8* %56, i32 %57, i32 %58, i8* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @P9_DEBUG_VFS, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i32, i8*, ...) @p9_debug(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %113

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @P9_DMLINK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %111, label %72

72:                                               ; preds = %67
  %73 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %74 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %73, i32 1, i8** %15, i32 1)
  store %struct.p9_fid* %74, %struct.p9_fid** %18, align 8
  %75 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %76 = call i64 @IS_ERR(%struct.p9_fid* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %80 = call i32 @PTR_ERR(%struct.p9_fid* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @P9_DEBUG_VFS, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 (i32, i8*, ...) @p9_debug(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  br label %113

84:                                               ; preds = %72
  %85 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %86 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %85, %struct.p9_fid* %86, i32 %89)
  %91 = bitcast %struct.p9_fid* %90 to %struct.inode*
  store %struct.inode* %91, %struct.inode** %19, align 8
  %92 = load %struct.inode*, %struct.inode** %19, align 8
  %93 = bitcast %struct.inode* %92 to %struct.p9_fid*
  %94 = call i64 @IS_ERR(%struct.p9_fid* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.inode*, %struct.inode** %19, align 8
  %98 = bitcast %struct.inode* %97 to %struct.p9_fid*
  %99 = call i32 @PTR_ERR(%struct.p9_fid* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @P9_DEBUG_VFS, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (i32, i8*, ...) @p9_debug(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %113

103:                                              ; preds = %84
  %104 = load %struct.dentry*, %struct.dentry** %10, align 8
  %105 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %106 = call i32 @v9fs_fid_add(%struct.dentry* %104, %struct.p9_fid* %105)
  %107 = load %struct.dentry*, %struct.dentry** %10, align 8
  %108 = load %struct.inode*, %struct.inode** %19, align 8
  %109 = bitcast %struct.inode* %108 to %struct.p9_fid*
  %110 = call i32 @d_instantiate(%struct.dentry* %107, %struct.p9_fid* %109)
  br label %111

111:                                              ; preds = %103, %67
  %112 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %112, %struct.p9_fid** %7, align 8
  br label %128

113:                                              ; preds = %96, %78, %63
  %114 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %115 = icmp ne %struct.p9_fid* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %118 = call i32 @p9_client_clunk(%struct.p9_fid* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %121 = icmp ne %struct.p9_fid* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %124 = call i32 @p9_client_clunk(%struct.p9_fid* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %14, align 4
  %127 = call %struct.p9_fid* @ERR_PTR(i32 %126)
  store %struct.p9_fid* %127, %struct.p9_fid** %7, align 8
  br label %128

128:                                              ; preds = %125, %111, %46, %32
  %129 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  ret %struct.p9_fid* %129
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local %struct.p9_fid* @clone_fid(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_fcreate(%struct.p9_fid*, i8*, i32, i32, i8*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
