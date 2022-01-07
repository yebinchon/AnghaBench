; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.p9_fid = type { i32 }
%struct.v9fs_session_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inode: %p dentry: %p rmdir: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@AT_REMOVEDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @v9fs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_remove(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.p9_fid*, align 8
  %12 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @P9_DEBUG_VFS, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = ptrtoint %struct.inode* %16 to i32
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.dentry* %18, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %21)
  store %struct.v9fs_session_info* %22, %struct.v9fs_session_info** %12, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call %struct.inode* @d_inode(%struct.dentry* %23)
  store %struct.inode* %24, %struct.inode** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %25)
  store %struct.p9_fid* %26, %struct.p9_fid** %11, align 8
  %27 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %28 = call i64 @IS_ERR(%struct.p9_fid* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %32 = call i32 @PTR_ERR(%struct.p9_fid* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @P9_DEBUG_VFS, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %3
  %38 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %12, align 8
  %39 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @v9fs_at_to_dotl_flags(i32 %47)
  %49 = call i32 @p9_client_unlinkat(%struct.p9_fid* %42, i32 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %41, %37
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = call %struct.p9_fid* @v9fs_fid_clone(%struct.dentry* %56)
  store %struct.p9_fid* %57, %struct.p9_fid** %10, align 8
  %58 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %59 = call i64 @IS_ERR(%struct.p9_fid* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %63 = call i32 @PTR_ERR(%struct.p9_fid* %62)
  store i32 %63, i32* %4, align 4
  br label %90

64:                                               ; preds = %55
  %65 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %66 = call i32 @p9_client_remove(%struct.p9_fid* %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @AT_REMOVEDIR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i32 @clear_nlink(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = call i32 @v9fs_dec_count(%struct.inode* %78)
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @v9fs_dec_count(%struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %86)
  br label %88

88:                                               ; preds = %83, %67
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %61, %30
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9_client_unlinkat(%struct.p9_fid*, i32, i32) #1

declare dso_local i32 @v9fs_at_to_dotl_flags(i32) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(%struct.dentry*) #1

declare dso_local i32 @p9_client_remove(%struct.p9_fid*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @v9fs_dec_count(%struct.inode*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
