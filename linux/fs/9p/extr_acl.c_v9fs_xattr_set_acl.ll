; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_xattr_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.posix_acl = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.iattr = type { i32, i32, i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_CLIENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @v9fs_xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_xattr_set_acl(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.posix_acl*, align 8
  %18 = alloca %struct.v9fs_session_info*, align 8
  %19 = alloca %struct.iattr, align 4
  %20 = alloca %struct.posix_acl*, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %21)
  store %struct.v9fs_session_info* %22, %struct.v9fs_session_info** %18, align 8
  %23 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %18, align 8
  %24 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @V9FS_ACCESS_CLIENT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %33 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @v9fs_xattr_set(%struct.dentry* %31, i32 %34, i8* %35, i64 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %155

39:                                               ; preds = %7
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISLNK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %155

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @inode_owner_or_capable(%struct.inode* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %155

55:                                               ; preds = %48
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call %struct.posix_acl* @posix_acl_from_xattr(i32* @init_user_ns, i8* %59, i64 %60)
  store %struct.posix_acl* %61, %struct.posix_acl** %17, align 8
  %62 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %63 = call i64 @IS_ERR(%struct.posix_acl* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %67 = call i32 @PTR_ERR(%struct.posix_acl* %66)
  store i32 %67, i32* %8, align 4
  br label %155

68:                                               ; preds = %58
  %69 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %70 = icmp ne %struct.posix_acl* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %78 = call i32 @posix_acl_valid(i32 %76, %struct.posix_acl* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %151

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83
  br label %86

85:                                               ; preds = %55
  store %struct.posix_acl* null, %struct.posix_acl** %17, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %88 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %130 [
    i32 129, label %90
    i32 128, label %114
  ]

90:                                               ; preds = %86
  %91 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %92 = icmp ne %struct.posix_acl* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %90
  %94 = bitcast %struct.iattr* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %94, i8 0, i64 12, i1 false)
  %95 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  store %struct.posix_acl* %95, %struct.posix_acl** %20, align 8
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 1
  %98 = call i32 @posix_acl_update_mode(%struct.inode* %96, i32* %97, %struct.posix_acl** %17)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %151

102:                                              ; preds = %93
  %103 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %104 = icmp ne %struct.posix_acl* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %107 = call i32 @posix_acl_release(%struct.posix_acl* %106)
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* @ATTR_MODE, align 4
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.dentry*, %struct.dentry** %10, align 8
  %112 = call i32 @v9fs_vfs_setattr_dotl(%struct.dentry* %111, %struct.iattr* %19)
  br label %113

113:                                              ; preds = %108, %90
  br label %132

114:                                              ; preds = %86
  %115 = load %struct.inode*, %struct.inode** %11, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @S_ISDIR(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %114
  %121 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %122 = icmp ne %struct.posix_acl* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  br label %127

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i32 [ %125, %123 ], [ 0, %126 ]
  store i32 %128, i32* %16, align 4
  br label %151

129:                                              ; preds = %114
  br label %132

130:                                              ; preds = %86
  %131 = call i32 (...) @BUG()
  br label %132

132:                                              ; preds = %130, %129, %113
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %135 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @v9fs_xattr_set(%struct.dentry* %133, i32 %136, i8* %137, i64 %138, i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %132
  %144 = load %struct.inode*, %struct.inode** %11, align 8
  %145 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %146 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %149 = call i32 @set_cached_acl(%struct.inode* %144, i32 %147, %struct.posix_acl* %148)
  br label %150

150:                                              ; preds = %143, %132
  br label %151

151:                                              ; preds = %150, %127, %101, %81
  %152 = load %struct.posix_acl*, %struct.posix_acl** %17, align 8
  %153 = call i32 @posix_acl_release(%struct.posix_acl* %152)
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %65, %52, %45, %30
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local i32 @v9fs_xattr_set(%struct.dentry*, i32, i8*, i64, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32*, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(i32, %struct.posix_acl*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i32*, %struct.posix_acl**) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @v9fs_vfs_setattr_dotl(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
