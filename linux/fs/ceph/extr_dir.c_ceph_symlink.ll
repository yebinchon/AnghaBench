; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.inode*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_acl_sec_ctx = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"symlink in dir %p dentry %p to '%s'\0A\00", align 1
@CEPH_MDS_OP_SYMLINK = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ceph_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_mds_client*, align 8
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca %struct.ceph_acl_sec_ctx, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %15)
  store %struct.ceph_fs_client* %16, %struct.ceph_fs_client** %8, align 8
  %17 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %18 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %17, i32 0, i32 0
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %18, align 8
  store %struct.ceph_mds_client* %19, %struct.ceph_mds_client** %9, align 8
  %20 = bitcast %struct.ceph_acl_sec_ctx* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @ceph_snap(%struct.inode* %21)
  %23 = load i64, i64* @CEPH_NOSNAP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %125

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i64 @ceph_quota_is_max_files_exceeded(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EDQUOT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %116

35:                                               ; preds = %28
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = load i32, i32* @S_IFLNK, align 4
  %38 = or i32 %37, 511
  %39 = call i32 @ceph_security_init_secctx(%struct.dentry* %36, i32 %38, %struct.ceph_acl_sec_ctx* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %116

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.inode* %44, %struct.dentry* %45, i8* %46)
  %48 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %49 = load i32, i32* @CEPH_MDS_OP_SYMLINK, align 4
  %50 = load i32, i32* @USE_AUTH_MDS, align 4
  %51 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %48, i32 %49, i32 %50)
  store %struct.ceph_mds_request* %51, %struct.ceph_mds_request** %10, align 8
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %53 = call i64 @IS_ERR(%struct.ceph_mds_request* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %57 = call i32 @PTR_ERR(%struct.ceph_mds_request* %56)
  store i32 %57, i32* %12, align 4
  br label %116

58:                                               ; preds = %43
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kstrdup(i8* %59, i32 %60)
  %62 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %65 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  %71 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %72 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %71)
  br label %116

73:                                               ; preds = %58
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %75, i32 0, i32 6
  store %struct.inode* %74, %struct.inode** %76, align 8
  %77 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %78 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %78, i32 0, i32 5
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = call i32 @dget(%struct.dentry* %81)
  %83 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %86 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %88 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %91 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %93 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %94 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %98 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %95, %struct.inode* %96, %struct.ceph_mds_request* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %73
  %102 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %103 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %101
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = call i32 @ceph_handle_notrace_create(%struct.inode* %110, %struct.dentry* %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %109, %101, %73
  %114 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %115 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %114)
  br label %116

116:                                              ; preds = %113, %68, %55, %42, %32
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.dentry*, %struct.dentry** %6, align 8
  %121 = call i32 @d_drop(%struct.dentry* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = call i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx* %11)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %122, %25
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i64 @ceph_quota_is_max_files_exceeded(%struct.inode*) #1

declare dso_local i32 @ceph_security_init_secctx(%struct.dentry*, i32, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.dentry*, i8*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_handle_notrace_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
