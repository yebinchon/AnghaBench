; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.ceph_fs_client = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %11)
  store %struct.ceph_fs_client* %12, %struct.ceph_fs_client** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call i64 @ceph_snap(%struct.inode* %13)
  %15 = load i64, i64* @CEPH_NOSNAP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EROFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = call i32 @setattr_prepare(%struct.dentry* %21, %struct.iattr* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %20
  %29 = load %struct.iattr*, %struct.iattr** %5, align 8
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATTR_SIZE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.iattr*, %struct.iattr** %5, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %43 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @max(i32 %41, i32 %44)
  %46 = icmp sgt i64 %38, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EFBIG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %35, %28
  %51 = load %struct.iattr*, %struct.iattr** %5, align 8
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ATTR_SIZE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.iattr*, %struct.iattr** %5, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ceph_quota_is_max_bytes_exceeded(%struct.inode* %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EDQUOT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %57, %50
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = load %struct.iattr*, %struct.iattr** %5, align 8
  %70 = call i32 @__ceph_setattr(%struct.inode* %68, %struct.iattr* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.iattr*, %struct.iattr** %5, align 8
  %75 = getelementptr inbounds %struct.iattr, %struct.iattr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ATTR_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = load %struct.iattr*, %struct.iattr** %5, align 8
  %83 = getelementptr inbounds %struct.iattr, %struct.iattr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @posix_acl_chmod(%struct.inode* %81, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %73, %67
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %64, %47, %26, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @ceph_quota_is_max_bytes_exceeded(%struct.inode*, i64) #1

declare dso_local i32 @__ceph_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
