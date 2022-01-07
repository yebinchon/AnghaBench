; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.p9_fid = type { i32 }
%struct.posix_acl = type { i32 }
%struct.v9fs_session_info = type { i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_CLIENT = common dso_local global i32 0, align 4
@V9FS_ACL_MASK = common dso_local global i32 0, align 4
@V9FS_POSIX_ACL = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_get_acl(%struct.inode* %0, %struct.p9_fid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %10)
  store %struct.v9fs_session_info* %11, %struct.v9fs_session_info** %9, align 8
  %12 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %13 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @V9FS_ACCESS_CLIENT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %21 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V9FS_ACL_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @V9FS_POSIX_ACL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19, %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %30 = call i32 @set_cached_acl(%struct.inode* %28, i32 %29, %struct.posix_acl* null)
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %33 = call i32 @set_cached_acl(%struct.inode* %31, i32 %32, %struct.posix_acl* null)
  store i32 0, i32* %3, align 4
  br label %76

34:                                               ; preds = %19
  %35 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %36 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %37 = call %struct.posix_acl* @__v9fs_get_acl(%struct.p9_fid* %35, i32 %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %8, align 8
  %38 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %39 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %40 = call %struct.posix_acl* @__v9fs_get_acl(%struct.p9_fid* %38, i32 %39)
  store %struct.posix_acl* %40, %struct.posix_acl** %7, align 8
  %41 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %42 = call i32 @IS_ERR(%struct.posix_acl* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %34
  %45 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %46 = call i32 @IS_ERR(%struct.posix_acl* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %51 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %52 = call i32 @set_cached_acl(%struct.inode* %49, i32 %50, %struct.posix_acl* %51)
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %55 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %56 = call i32 @set_cached_acl(%struct.inode* %53, i32 %54, %struct.posix_acl* %55)
  br label %60

57:                                               ; preds = %44, %34
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %62 = call i32 @IS_ERR(%struct.posix_acl* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %66 = call i32 @posix_acl_release(%struct.posix_acl* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %69 = call i32 @IS_ERR(%struct.posix_acl* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %73 = call i32 @posix_acl_release(%struct.posix_acl* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @__v9fs_get_acl(%struct.p9_fid*, i32) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
