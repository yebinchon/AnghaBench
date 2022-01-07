; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }
%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type { i32, %struct.TYPE_2__ }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dir: %p dentry: (%pd) %p flags: %x\0A\00", align 1
@NAME_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @v9fs_vfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.p9_fid*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @P9_DEBUG_VFS, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = bitcast %struct.inode* %15 to %struct.p9_fid*
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = bitcast %struct.dentry* %17 to %struct.p9_fid*
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = bitcast %struct.dentry* %19 to %struct.p9_fid*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @p9_debug(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.p9_fid* %16, %struct.p9_fid* %18, %struct.p9_fid* %20, i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NAME_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.p9_fid* @ERR_PTR(i32 %31)
  %33 = bitcast %struct.p9_fid* %32 to %struct.dentry*
  store %struct.dentry* %33, %struct.dentry** %4, align 8
  br label %134

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = bitcast %struct.inode* %35 to %struct.p9_fid*
  %37 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %36)
  store %struct.v9fs_session_info* %37, %struct.v9fs_session_info** %9, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = bitcast %struct.dentry* %38 to %struct.p9_fid*
  %40 = call %struct.p9_fid* @v9fs_parent_fid(%struct.p9_fid* %39)
  store %struct.p9_fid* %40, %struct.p9_fid** %10, align 8
  %41 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %42 = call i64 @IS_ERR(%struct.p9_fid* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %46 = call %struct.p9_fid* @ERR_CAST(%struct.p9_fid* %45)
  %47 = bitcast %struct.p9_fid* %46 to %struct.dentry*
  store %struct.dentry* %47, %struct.dentry** %4, align 8
  br label %134

48:                                               ; preds = %34
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  %53 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %54 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %53, i32 1, i8** %13, i32 1)
  store %struct.p9_fid* %54, %struct.p9_fid** %11, align 8
  %55 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.p9_fid* @ERR_PTR(i32 %57)
  %59 = icmp eq %struct.p9_fid* %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store %struct.inode* null, %struct.inode** %12, align 8
  br label %99

61:                                               ; preds = %48
  %62 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %63 = call i64 @IS_ERR(%struct.p9_fid* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %67 = call %struct.p9_fid* @ERR_CAST(%struct.p9_fid* %66)
  %68 = bitcast %struct.p9_fid* %67 to %struct.inode*
  store %struct.inode* %68, %struct.inode** %12, align 8
  br label %98

69:                                               ; preds = %61
  %70 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %71 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CACHE_LOOSE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %77 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CACHE_FSCACHE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75, %69
  %82 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %83 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.p9_fid* @v9fs_get_inode_from_fid(%struct.v9fs_session_info* %82, %struct.p9_fid* %83, i32 %86)
  %88 = bitcast %struct.p9_fid* %87 to %struct.inode*
  store %struct.inode* %88, %struct.inode** %12, align 8
  br label %97

89:                                               ; preds = %75
  %90 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %91 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %90, %struct.p9_fid* %91, i32 %94)
  %96 = bitcast %struct.p9_fid* %95 to %struct.inode*
  store %struct.inode* %96, %struct.inode** %12, align 8
  br label %97

97:                                               ; preds = %89, %81
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %60
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = bitcast %struct.inode* %100 to %struct.p9_fid*
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = bitcast %struct.dentry* %102 to %struct.p9_fid*
  %104 = call %struct.p9_fid* @d_splice_alias(%struct.p9_fid* %101, %struct.p9_fid* %103)
  %105 = bitcast %struct.p9_fid* %104 to %struct.dentry*
  store %struct.dentry* %105, %struct.dentry** %8, align 8
  %106 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %107 = call i64 @IS_ERR(%struct.p9_fid* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %99
  %110 = load %struct.dentry*, %struct.dentry** %8, align 8
  %111 = icmp ne %struct.dentry* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  %114 = bitcast %struct.dentry* %113 to %struct.p9_fid*
  %115 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %116 = call i32 @v9fs_fid_add(%struct.p9_fid* %114, %struct.p9_fid* %115)
  br label %131

117:                                              ; preds = %109
  %118 = load %struct.dentry*, %struct.dentry** %8, align 8
  %119 = bitcast %struct.dentry* %118 to %struct.p9_fid*
  %120 = call i64 @IS_ERR(%struct.p9_fid* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = bitcast %struct.dentry* %123 to %struct.p9_fid*
  %125 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %126 = call i32 @v9fs_fid_add(%struct.p9_fid* %124, %struct.p9_fid* %125)
  br label %130

127:                                              ; preds = %117
  %128 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %129 = call i32 @p9_client_clunk(%struct.p9_fid* %128)
  br label %130

130:                                              ; preds = %127, %122
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %99
  %133 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %133, %struct.dentry** %4, align 8
  br label %134

134:                                              ; preds = %132, %44, %29
  %135 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %135
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_fid*, %struct.p9_fid*, %struct.p9_fid*, i32) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.p9_fid*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_CAST(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local %struct.p9_fid* @d_splice_alias(%struct.p9_fid*, %struct.p9_fid*) #1

declare dso_local i32 @v9fs_fid_add(%struct.p9_fid*, %struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
