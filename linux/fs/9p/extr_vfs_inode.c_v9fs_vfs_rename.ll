; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v9fs_session_info = type { i32, i32 }
%struct.p9_fid = type { i32 }
%struct.p9_wstat = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"old dir and new dir are different\0A\00", align 1
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_vfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.v9fs_session_info*, align 8
  %16 = alloca %struct.p9_fid*, align 8
  %17 = alloca %struct.p9_fid*, align 8
  %18 = alloca %struct.p9_fid*, align 8
  %19 = alloca %struct.p9_wstat, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %181

25:                                               ; preds = %5
  %26 = load i32, i32* @P9_DEBUG_VFS, align 4
  %27 = call i32 @p9_debug(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = call %struct.inode* @d_inode(%struct.dentry* %28)
  store %struct.inode* %29, %struct.inode** %13, align 8
  %30 = load %struct.dentry*, %struct.dentry** %10, align 8
  %31 = call %struct.inode* @d_inode(%struct.dentry* %30)
  store %struct.inode* %31, %struct.inode** %14, align 8
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %32)
  store %struct.v9fs_session_info* %33, %struct.v9fs_session_info** %15, align 8
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %34)
  store %struct.p9_fid* %35, %struct.p9_fid** %16, align 8
  %36 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %37 = call i64 @IS_ERR(%struct.p9_fid* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_fid* %40)
  store i32 %41, i32* %6, align 4
  br label %181

42:                                               ; preds = %25
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = call i32 @v9fs_parent_fid(%struct.dentry* %43)
  %45 = call %struct.p9_fid* @clone_fid(i32 %44)
  store %struct.p9_fid* %45, %struct.p9_fid** %17, align 8
  %46 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %47 = call i64 @IS_ERR(%struct.p9_fid* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %51 = call i32 @PTR_ERR(%struct.p9_fid* %50)
  store i32 %51, i32* %12, align 4
  br label %179

52:                                               ; preds = %42
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = call i32 @v9fs_parent_fid(%struct.dentry* %53)
  %55 = call %struct.p9_fid* @clone_fid(i32 %54)
  store %struct.p9_fid* %55, %struct.p9_fid** %18, align 8
  %56 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %57 = call i64 @IS_ERR(%struct.p9_fid* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %61 = call i32 @PTR_ERR(%struct.p9_fid* %60)
  store i32 %61, i32* %12, align 4
  br label %176

62:                                               ; preds = %52
  %63 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %64 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %63, i32 0, i32 0
  %65 = call i32 @down_write(i32* %64)
  %66 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %67 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %62
  %70 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %76 = load %struct.dentry*, %struct.dentry** %10, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @p9_client_renameat(%struct.p9_fid* %70, i32 %74, %struct.p9_fid* %75, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  %86 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %87 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %88 = load %struct.dentry*, %struct.dentry** %10, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @p9_client_rename(%struct.p9_fid* %86, %struct.p9_fid* %87, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %85, %69
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %126

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %62
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dentry*, %struct.dentry** %10, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %110 = call i32 @p9_debug(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EXDEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %126

113:                                              ; preds = %100
  %114 = call i32 @v9fs_blank_wstat(%struct.p9_wstat* %19)
  %115 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %116 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %19, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.dentry*, %struct.dentry** %10, align 8
  %120 = getelementptr inbounds %struct.dentry, %struct.dentry* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %19, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %125 = call i32 @p9_client_wstat(%struct.p9_fid* %124, %struct.p9_wstat* %19)
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %113, %108, %98
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %170, label %129

129:                                              ; preds = %126
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = icmp ne %struct.inode* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.inode*, %struct.inode** %14, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @S_ISDIR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.inode*, %struct.inode** %14, align 8
  %140 = call i32 @clear_nlink(%struct.inode* %139)
  br label %144

141:                                              ; preds = %132
  %142 = load %struct.inode*, %struct.inode** %14, align 8
  %143 = call i32 @v9fs_dec_count(%struct.inode* %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %129
  %146 = load %struct.inode*, %struct.inode** %13, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @S_ISDIR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.inode*, %struct.inode** %14, align 8
  %153 = icmp ne %struct.inode* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = call i32 @inc_nlink(%struct.inode* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.inode*, %struct.inode** %7, align 8
  %159 = call i32 @v9fs_dec_count(%struct.inode* %158)
  br label %160

160:                                              ; preds = %157, %145
  %161 = load %struct.inode*, %struct.inode** %13, align 8
  %162 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %161)
  %163 = load %struct.inode*, %struct.inode** %7, align 8
  %164 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %163)
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %165)
  %167 = load %struct.dentry*, %struct.dentry** %8, align 8
  %168 = load %struct.dentry*, %struct.dentry** %10, align 8
  %169 = call i32 @d_move(%struct.dentry* %167, %struct.dentry* %168)
  br label %170

170:                                              ; preds = %160, %126
  %171 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %172 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %171, i32 0, i32 0
  %173 = call i32 @up_write(i32* %172)
  %174 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %175 = call i32 @p9_client_clunk(%struct.p9_fid* %174)
  br label %176

176:                                              ; preds = %170, %59
  %177 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %178 = call i32 @p9_client_clunk(%struct.p9_fid* %177)
  br label %179

179:                                              ; preds = %176, %49
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %179, %39, %22
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @clone_fid(i32) #1

declare dso_local i32 @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9_client_renameat(%struct.p9_fid*, i32, %struct.p9_fid*, i32) #1

declare dso_local i32 @p9_client_rename(%struct.p9_fid*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_blank_wstat(%struct.p9_wstat*) #1

declare dso_local i32 @p9_client_wstat(%struct.p9_fid*, %struct.p9_wstat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @v9fs_dec_count(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
