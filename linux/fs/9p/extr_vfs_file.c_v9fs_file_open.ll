; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.p9_fid* }
%struct.p9_fid = type { i32 }
%struct.v9fs_inode = type { i32, i8* }
%struct.v9fs_session_info = type { i64 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"inode: %p file: %p\0A\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v9fs_inode*, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load i32, i32* @P9_DEBUG_VFS, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call i32 @p9_debug(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.inode* %12, %struct.file* %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %15)
  store %struct.v9fs_inode* %16, %struct.v9fs_inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %17)
  store %struct.v9fs_session_info* %18, %struct.v9fs_session_info** %8, align 8
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %20 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @v9fs_open_to_dotl_flags(i32 %25)
  store i32 %26, i32* %10, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %32 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %31)
  %33 = call i32 @v9fs_uflags2omode(i32 %30, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 1
  %37 = load %struct.p9_fid*, %struct.p9_fid** %36, align 8
  store %struct.p9_fid* %37, %struct.p9_fid** %9, align 8
  %38 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %39 = icmp ne %struct.p9_fid* %38, null
  br i1 %39, label %80, label %40

40:                                               ; preds = %34
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = call i32 @file_dentry(%struct.file* %41)
  %43 = call %struct.p9_fid* @v9fs_fid_clone(i32 %42)
  store %struct.p9_fid* %43, %struct.p9_fid** %9, align 8
  %44 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %45 = call i64 @IS_ERR(%struct.p9_fid* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %49 = call i32 @PTR_ERR(%struct.p9_fid* %48)
  store i32 %49, i32* %3, align 4
  br label %157

50:                                               ; preds = %40
  %51 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @p9_client_open(%struct.p9_fid* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %58 = call i32 @p9_client_clunk(%struct.p9_fid* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %157

60:                                               ; preds = %50
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @O_APPEND, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %69 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %73 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = load i32, i32* @SEEK_END, align 4
  %78 = call i32 @generic_file_llseek(%struct.file* %76, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %75, %71, %67, %60
  br label %80

80:                                               ; preds = %79, %34
  %81 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 1
  store %struct.p9_fid* %81, %struct.p9_fid** %83, align 8
  %84 = load %struct.v9fs_inode*, %struct.v9fs_inode** %7, align 8
  %85 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %84, i32 0, i32 0
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %88 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CACHE_LOOSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %80
  %93 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %94 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CACHE_FSCACHE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %92, %80
  %99 = load %struct.v9fs_inode*, %struct.v9fs_inode** %7, align 8
  %100 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %129, label %103

103:                                              ; preds = %98
  %104 = load %struct.file*, %struct.file** %5, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @O_ACCMODE, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @O_RDONLY, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %103
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = call i32 @file_dentry(%struct.file* %112)
  %114 = call %struct.p9_fid* @v9fs_writeback_fid(i32 %113)
  store %struct.p9_fid* %114, %struct.p9_fid** %9, align 8
  %115 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %116 = call i64 @IS_ERR(%struct.p9_fid* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %120 = call i32 @PTR_ERR(%struct.p9_fid* %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.v9fs_inode*, %struct.v9fs_inode** %7, align 8
  %122 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  br label %149

124:                                              ; preds = %111
  %125 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %126 = bitcast %struct.p9_fid* %125 to i8*
  %127 = load %struct.v9fs_inode*, %struct.v9fs_inode** %7, align 8
  %128 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %103, %98, %92
  %130 = load %struct.v9fs_inode*, %struct.v9fs_inode** %7, align 8
  %131 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %134 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CACHE_LOOSE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  %139 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %140 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CACHE_FSCACHE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138, %129
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = load %struct.file*, %struct.file** %5, align 8
  %147 = call i32 @v9fs_cache_inode_set_cookie(%struct.inode* %145, %struct.file* %146)
  br label %148

148:                                              ; preds = %144, %138
  store i32 0, i32* %3, align 4
  br label %157

149:                                              ; preds = %118
  %150 = load %struct.file*, %struct.file** %5, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 1
  %152 = load %struct.p9_fid*, %struct.p9_fid** %151, align 8
  %153 = call i32 @p9_client_clunk(%struct.p9_fid* %152)
  %154 = load %struct.file*, %struct.file** %5, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 1
  store %struct.p9_fid* null, %struct.p9_fid** %155, align 8
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %149, %148, %56, %47
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.inode*, %struct.file*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_open_to_dotl_flags(i32) #1

declare dso_local i32 @v9fs_uflags2omode(i32, i32) #1

declare dso_local i32 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(i32) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_open(%struct.p9_fid*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.p9_fid* @v9fs_writeback_fid(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v9fs_cache_inode_set_cookie(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
