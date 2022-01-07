; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type opaque
%struct.file = type { i32, %struct.p9_fid* }
%struct.p9_fid = type { i32 }
%struct.v9fs_inode = type { i32, i8* }
%struct.v9fs_session_info = type { i64 }

@O_CREAT = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@generic_file_open = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)* @v9fs_vfs_atomic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_atomic_open(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v9fs_inode*, align 8
  %15 = alloca %struct.v9fs_session_info*, align 8
  %16 = alloca %struct.p9_fid*, align 8
  %17 = alloca %struct.p9_fid*, align 8
  %18 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = bitcast %struct.dentry* %19 to %struct.p9_fid*
  %21 = call i64 @d_in_lookup(%struct.p9_fid* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = bitcast %struct.dentry* %25 to %struct.p9_fid*
  %27 = call %struct.p9_fid* @v9fs_vfs_lookup(%struct.inode* %24, %struct.p9_fid* %26, i32 0)
  %28 = bitcast %struct.p9_fid* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %18, align 8
  %29 = load %struct.dentry*, %struct.dentry** %18, align 8
  %30 = bitcast %struct.dentry* %29 to %struct.p9_fid*
  %31 = call i64 @IS_ERR(%struct.p9_fid* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.dentry*, %struct.dentry** %18, align 8
  %35 = bitcast %struct.dentry* %34 to %struct.p9_fid*
  %36 = call i32 @PTR_ERR(%struct.p9_fid* %35)
  store i32 %36, i32* %6, align 4
  br label %181

37:                                               ; preds = %23
  %38 = load %struct.dentry*, %struct.dentry** %18, align 8
  %39 = icmp ne %struct.dentry* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %41, %struct.dentry** %8, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = bitcast %struct.dentry* %49 to %struct.p9_fid*
  %51 = call i64 @d_really_is_positive(%struct.p9_fid* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = load %struct.dentry*, %struct.dentry** %18, align 8
  %56 = bitcast %struct.dentry* %55 to %struct.p9_fid*
  %57 = call i32 @finish_no_open(%struct.file* %54, %struct.p9_fid* %56)
  store i32 %57, i32* %6, align 4
  br label %181

58:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %59)
  store %struct.v9fs_session_info* %60, %struct.v9fs_session_info** %15, align 8
  %61 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.dentry*, %struct.dentry** %8, align 8
  %67 = bitcast %struct.dentry* %66 to %struct.p9_fid*
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %71 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %70)
  %72 = call i32 @v9fs_uflags2omode(i32 %69, i32 %71)
  %73 = call %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %64, %struct.inode* %65, %struct.p9_fid* %67, i32* null, i32 %68, i32 %72)
  store %struct.p9_fid* %73, %struct.p9_fid** %16, align 8
  %74 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %75 = call i64 @IS_ERR(%struct.p9_fid* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %79 = call i32 @PTR_ERR(%struct.p9_fid* %78)
  store i32 %79, i32* %12, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %16, align 8
  br label %174

80:                                               ; preds = %58
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %81)
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  %84 = bitcast %struct.dentry* %83 to %struct.p9_fid*
  %85 = call i32 @d_inode(%struct.p9_fid* %84)
  %86 = call %struct.v9fs_inode* @V9FS_I(i32 %85)
  store %struct.v9fs_inode* %86, %struct.v9fs_inode** %14, align 8
  %87 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %88 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %87, i32 0, i32 0
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %91 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CACHE_LOOSE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %80
  %96 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %97 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CACHE_FSCACHE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %95, %80
  %102 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %103 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %130, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @O_ACCMODE, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @O_RDONLY, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load %struct.dentry*, %struct.dentry** %8, align 8
  %114 = bitcast %struct.dentry* %113 to %struct.p9_fid*
  %115 = call %struct.p9_fid* @v9fs_writeback_fid(%struct.p9_fid* %114)
  store %struct.p9_fid* %115, %struct.p9_fid** %17, align 8
  %116 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %117 = call i64 @IS_ERR(%struct.p9_fid* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %121 = call i32 @PTR_ERR(%struct.p9_fid* %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %123 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  br label %174

125:                                              ; preds = %112
  %126 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %127 = bitcast %struct.p9_fid* %126 to i8*
  %128 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %129 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %106, %101, %95
  %131 = load %struct.v9fs_inode*, %struct.v9fs_inode** %14, align 8
  %132 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.file*, %struct.file** %9, align 8
  %135 = load %struct.dentry*, %struct.dentry** %8, align 8
  %136 = bitcast %struct.dentry* %135 to %struct.p9_fid*
  %137 = load i32, i32* @generic_file_open, align 4
  %138 = call i32 @finish_open(%struct.file* %134, %struct.p9_fid* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %174

142:                                              ; preds = %130
  %143 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %144 = load %struct.file*, %struct.file** %9, align 8
  %145 = getelementptr inbounds %struct.file, %struct.file* %144, i32 0, i32 1
  store %struct.p9_fid* %143, %struct.p9_fid** %145, align 8
  %146 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %147 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CACHE_LOOSE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %142
  %152 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %153 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CACHE_FSCACHE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151, %142
  %158 = load %struct.dentry*, %struct.dentry** %8, align 8
  %159 = bitcast %struct.dentry* %158 to %struct.p9_fid*
  %160 = call i32 @d_inode(%struct.p9_fid* %159)
  %161 = load %struct.file*, %struct.file** %9, align 8
  %162 = call i32 @v9fs_cache_inode_set_cookie(i32 %160, %struct.file* %161)
  br label %163

163:                                              ; preds = %157, %151
  %164 = load i32, i32* @FMODE_CREATED, align 4
  %165 = load %struct.file*, %struct.file** %9, align 8
  %166 = getelementptr inbounds %struct.file, %struct.file* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %180, %163
  %170 = load %struct.dentry*, %struct.dentry** %18, align 8
  %171 = bitcast %struct.dentry* %170 to %struct.p9_fid*
  %172 = call i32 @dput(%struct.p9_fid* %171)
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %6, align 4
  br label %181

174:                                              ; preds = %141, %119, %77
  %175 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %176 = icmp ne %struct.p9_fid* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %179 = call i32 @p9_client_clunk(%struct.p9_fid* %178)
  br label %180

180:                                              ; preds = %177, %174
  br label %169

181:                                              ; preds = %169, %53, %33
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i64 @d_in_lookup(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_vfs_lookup(%struct.inode*, %struct.p9_fid*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i64 @d_really_is_positive(%struct.p9_fid*) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.p9_fid*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info*, %struct.inode*, %struct.p9_fid*, i32*, i32, i32) #1

declare dso_local i32 @v9fs_uflags2omode(i32, i32) #1

declare dso_local i32 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(i32) #1

declare dso_local i32 @d_inode(%struct.p9_fid*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.p9_fid* @v9fs_writeback_fid(%struct.p9_fid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_cache_inode_set_cookie(i32, %struct.file*) #1

declare dso_local i32 @dput(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
