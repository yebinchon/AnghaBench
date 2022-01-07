; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.p9_wstat = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @v9fs_vfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v9fs_session_info*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca %struct.p9_wstat, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load i32, i32* @P9_DEBUG_VFS, align 4
  %11 = call i32 @p9_debug(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.iattr*, %struct.iattr** %5, align 8
  %14 = call i32 @setattr_prepare(%struct.dentry* %12, %struct.iattr* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %164

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %22)
  store %struct.v9fs_session_info* %23, %struct.v9fs_session_info** %7, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %24)
  store %struct.p9_fid* %25, %struct.p9_fid** %8, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %27 = call i64 @IS_ERR(%struct.p9_fid* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.p9_fid* %30)
  store i32 %31, i32* %3, align 4
  br label %164

32:                                               ; preds = %19
  %33 = call i32 @v9fs_blank_wstat(%struct.p9_wstat* %9)
  %34 = load %struct.iattr*, %struct.iattr** %5, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATTR_MODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %42 = load %struct.iattr*, %struct.iattr** %5, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %41, i32 %44)
  %46 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATTR_MTIME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.iattr*, %struct.iattr** %5, align 8
  %62 = getelementptr inbounds %struct.iattr, %struct.iattr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATTR_ATIME, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.iattr*, %struct.iattr** %5, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.iattr*, %struct.iattr** %5, align 8
  %75 = getelementptr inbounds %struct.iattr, %struct.iattr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ATTR_SIZE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.iattr*, %struct.iattr** %5, align 8
  %82 = getelementptr inbounds %struct.iattr, %struct.iattr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %87 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load %struct.iattr*, %struct.iattr** %5, align 8
  %91 = getelementptr inbounds %struct.iattr, %struct.iattr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ATTR_UID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.iattr*, %struct.iattr** %5, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.iattr*, %struct.iattr** %5, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATTR_GID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.iattr*, %struct.iattr** %5, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %85
  %115 = load %struct.dentry*, %struct.dentry** %4, align 8
  %116 = call i64 @d_is_reg(%struct.dentry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.dentry*, %struct.dentry** %4, align 8
  %120 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %119)
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @filemap_write_and_wait(i32 %122)
  br label %124

124:                                              ; preds = %118, %114
  %125 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %126 = call i32 @p9_client_wstat(%struct.p9_fid* %125, %struct.p9_wstat* %9)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %164

131:                                              ; preds = %124
  %132 = load %struct.iattr*, %struct.iattr** %5, align 8
  %133 = getelementptr inbounds %struct.iattr, %struct.iattr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ATTR_SIZE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %131
  %139 = load %struct.iattr*, %struct.iattr** %5, align 8
  %140 = getelementptr inbounds %struct.iattr, %struct.iattr* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dentry*, %struct.dentry** %4, align 8
  %143 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %142)
  %144 = call i64 @i_size_read(%struct.TYPE_11__* %143)
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.dentry*, %struct.dentry** %4, align 8
  %148 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %147)
  %149 = load %struct.iattr*, %struct.iattr** %5, align 8
  %150 = getelementptr inbounds %struct.iattr, %struct.iattr* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @truncate_setsize(%struct.TYPE_11__* %148, i64 %151)
  br label %153

153:                                              ; preds = %146, %138, %131
  %154 = load %struct.dentry*, %struct.dentry** %4, align 8
  %155 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %154)
  %156 = call i32 @v9fs_invalidate_inode_attr(%struct.TYPE_11__* %155)
  %157 = load %struct.dentry*, %struct.dentry** %4, align 8
  %158 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %157)
  %159 = load %struct.iattr*, %struct.iattr** %5, align 8
  %160 = call i32 @setattr_copy(%struct.TYPE_11__* %158, %struct.iattr* %159)
  %161 = load %struct.dentry*, %struct.dentry** %4, align 8
  %162 = call %struct.TYPE_11__* @d_inode(%struct.dentry* %161)
  %163 = call i32 @mark_inode_dirty(%struct.TYPE_11__* %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %153, %129, %29, %17
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_blank_wstat(%struct.p9_wstat*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i64 @d_is_reg(%struct.dentry*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local %struct.TYPE_11__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @p9_client_wstat(%struct.p9_fid*, %struct.p9_wstat*) #1

declare dso_local i64 @i_size_read(%struct.TYPE_11__*) #1

declare dso_local i32 @truncate_setsize(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.TYPE_11__*) #1

declare dso_local i32 @setattr_copy(%struct.TYPE_11__*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
