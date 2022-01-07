; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_setattr_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_setattr_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.p9_fid = type { i32 }
%struct.p9_iattr_dotl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_vfs_setattr_dotl(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca %struct.p9_iattr_dotl, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load i32, i32* @P9_DEBUG_VFS, align 4
  %13 = call i32 @p9_debug(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = load %struct.iattr*, %struct.iattr** %5, align 8
  %16 = call i32 @setattr_prepare(%struct.dentry* %14, %struct.iattr* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %133

21:                                               ; preds = %2
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @v9fs_mapped_iattr_valid(i32 %24)
  %26 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.iattr*, %struct.iattr** %5, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 6
  store i32 %33, i32* %34, align 4
  %35 = load %struct.iattr*, %struct.iattr** %5, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.iattr*, %struct.iattr** %5, align 8
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.iattr*, %struct.iattr** %5, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load %struct.iattr*, %struct.iattr** %5, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.p9_iattr_dotl, %struct.p9_iattr_dotl* %8, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %63)
  store %struct.p9_fid* %64, %struct.p9_fid** %7, align 8
  %65 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %66 = call i64 @IS_ERR(%struct.p9_fid* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %21
  %69 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %70 = call i32 @PTR_ERR(%struct.p9_fid* %69)
  store i32 %70, i32* %3, align 4
  br label %133

71:                                               ; preds = %21
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISREG(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @filemap_write_and_wait(i32 %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %84 = call i32 @p9_client_setattr(%struct.p9_fid* %83, %struct.p9_iattr_dotl* %8)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %133

89:                                               ; preds = %82
  %90 = load %struct.iattr*, %struct.iattr** %5, align 8
  %91 = getelementptr inbounds %struct.iattr, %struct.iattr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ATTR_SIZE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.iattr*, %struct.iattr** %5, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = call i64 @i_size_read(%struct.inode* %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = load %struct.iattr*, %struct.iattr** %5, align 8
  %106 = getelementptr inbounds %struct.iattr, %struct.iattr* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @truncate_setsize(%struct.inode* %104, i64 %107)
  br label %109

109:                                              ; preds = %103, %96, %89
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = load %struct.iattr*, %struct.iattr** %5, align 8
  %114 = call i32 @setattr_copy(%struct.inode* %112, %struct.iattr* %113)
  %115 = load %struct.inode*, %struct.inode** %9, align 8
  %116 = call i32 @mark_inode_dirty(%struct.inode* %115)
  %117 = load %struct.iattr*, %struct.iattr** %5, align 8
  %118 = getelementptr inbounds %struct.iattr, %struct.iattr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ATTR_MODE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %109
  %124 = load %struct.inode*, %struct.inode** %9, align 8
  %125 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %126 = call i32 @v9fs_acl_chmod(%struct.inode* %124, %struct.p9_fid* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %133

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %109
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %129, %87, %68, %19
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @v9fs_mapped_iattr_valid(i32) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @p9_client_setattr(%struct.p9_fid*, %struct.p9_iattr_dotl*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @v9fs_acl_chmod(%struct.inode*, %struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
