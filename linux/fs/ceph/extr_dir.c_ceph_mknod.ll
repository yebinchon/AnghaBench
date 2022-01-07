; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_8__, i32*, i32, %struct.TYPE_6__, i32, %struct.inode*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ceph_acl_sec_ctx = type { i32* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mknod in dir %p dentry %p mode 0%ho rdev %d\0A\00", align 1
@CEPH_MDS_OP_MKNOD = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ceph_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_fs_client*, align 8
  %11 = alloca %struct.ceph_mds_client*, align 8
  %12 = alloca %struct.ceph_mds_request*, align 8
  %13 = alloca %struct.ceph_acl_sec_ctx, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %17)
  store %struct.ceph_fs_client* %18, %struct.ceph_fs_client** %10, align 8
  %19 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %10, align 8
  %20 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %19, i32 0, i32 0
  %21 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %20, align 8
  store %struct.ceph_mds_client* %21, %struct.ceph_mds_client** %11, align 8
  %22 = bitcast %struct.ceph_acl_sec_ctx* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i64 @ceph_snap(%struct.inode* %23)
  %25 = load i64, i64* @CEPH_NOSNAP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %144

30:                                               ; preds = %4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i64 @ceph_quota_is_max_files_exceeded(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EDQUOT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %14, align 4
  br label %131

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @ceph_pre_init_acls(%struct.inode* %38, i32* %8, %struct.ceph_acl_sec_ctx* %13)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %131

43:                                               ; preds = %37
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ceph_security_init_secctx(%struct.dentry* %44, i32 %45, %struct.ceph_acl_sec_ctx* %13)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %131

50:                                               ; preds = %43
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.inode* %51, %struct.dentry* %52, i32 %53, i32 %54)
  %56 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %11, align 8
  %57 = load i32, i32* @CEPH_MDS_OP_MKNOD, align 4
  %58 = load i32, i32* @USE_AUTH_MDS, align 4
  %59 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %56, i32 %57, i32 %58)
  store %struct.ceph_mds_request* %59, %struct.ceph_mds_request** %12, align 8
  %60 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %61 = call i64 @IS_ERR(%struct.ceph_mds_request* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %65 = call i32 @PTR_ERR(%struct.ceph_mds_request* %64)
  store i32 %65, i32* %14, align 4
  br label %131

66:                                               ; preds = %50
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = call i32 @dget(%struct.dentry* %67)
  %69 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %70 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %72 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %75 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %74, i32 0, i32 7
  store %struct.inode* %73, %struct.inode** %75, align 8
  %76 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %77 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %77, i32 0, i32 6
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %83 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %81, i8** %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %89 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %93 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %96 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %98 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %99 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %13, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %66
  %104 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %13, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %106, i32 0, i32 3
  store i32* %105, i32** %107, align 8
  %108 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %13, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %103, %66
  %110 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %11, align 8
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %113 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %110, %struct.inode* %111, %struct.ceph_mds_request* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109
  %117 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %118 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %116
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = load %struct.dentry*, %struct.dentry** %7, align 8
  %127 = call i32 @ceph_handle_notrace_create(%struct.inode* %125, %struct.dentry* %126)
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %124, %116, %109
  %129 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %130 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %129)
  br label %131

131:                                              ; preds = %128, %63, %49, %42, %34
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load %struct.dentry*, %struct.dentry** %7, align 8
  %136 = call i32 @d_inode(%struct.dentry* %135)
  %137 = call i32 @ceph_init_inode_acls(i32 %136, %struct.ceph_acl_sec_ctx* %13)
  br label %141

138:                                              ; preds = %131
  %139 = load %struct.dentry*, %struct.dentry** %7, align 8
  %140 = call i32 @d_drop(%struct.dentry* %139)
  br label %141

141:                                              ; preds = %138, %134
  %142 = call i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx* %13)
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %141, %27
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i64 @ceph_quota_is_max_files_exceeded(%struct.inode*) #1

declare dso_local i32 @ceph_pre_init_acls(%struct.inode*, i32*, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @ceph_security_init_secctx(%struct.dentry*, i32, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_handle_notrace_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_init_inode_acls(i32, %struct.ceph_acl_sec_ctx*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @ceph_release_acl_sec_ctx(%struct.ceph_acl_sec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
