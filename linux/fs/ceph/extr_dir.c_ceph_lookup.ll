; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_6__, i32 }
%struct.ceph_fs_client = type { %struct.TYPE_5__*, %struct.ceph_mds_client* }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.inode*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32 }
%struct.ceph_dentry_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"lookup %p dentry %p '%pd'\0A\00", align 1
@NAME_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" dir %p flags are %d\0A\00", align 1
@DCACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c" dir %p complete, -ENOENT\0A\00", align 1
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_MDS_OP_LOOKUPSNAP = common dso_local global i32 0, align 4
@CEPH_MDS_OP_LOOKUP = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"lookup result=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @ceph_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_mds_client*, align 8
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_inode_info*, align 8
  %15 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %18)
  store %struct.ceph_fs_client* %19, %struct.ceph_fs_client** %8, align 8
  %20 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %21 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %20, i32 0, i32 1
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %21, align 8
  store %struct.ceph_mds_client* %22, %struct.ceph_mds_client** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.inode* %23, %struct.dentry* %24, %struct.dentry* %25)
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NAME_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.inode* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.inode* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %184

38:                                               ; preds = %3
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = bitcast %struct.dentry* %39 to %struct.inode*
  %41 = call i64 @d_really_is_negative(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %110

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %44)
  store %struct.ceph_inode_info* %45, %struct.ceph_inode_info** %14, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = bitcast %struct.dentry* %46 to %struct.inode*
  %48 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.inode* %47)
  store %struct.ceph_dentry_info* %48, %struct.ceph_dentry_info** %15, align 8
  %49 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %50 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %52, i32 %55)
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %62 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @strncmp(i32 %60, i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %43
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = bitcast %struct.dentry* %74 to %struct.inode*
  %76 = call i32 @is_root_ceph_dentry(%struct.inode* %73, %struct.inode* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %72
  %79 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %80 = load i32, i32* @DCACHE, align 4
  %81 = call i64 @ceph_test_mount_opt(%struct.ceph_fs_client* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %85 = call i64 @__ceph_dir_is_complete(%struct.ceph_inode_info* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %89 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %90 = call i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info* %88, i32 %89, i32 1)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %94 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %96)
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = bitcast %struct.dentry* %98 to %struct.inode*
  %100 = call i32 @d_add(%struct.inode* %99, i32* null)
  %101 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %102 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %101, i32 0, i32 1
  %103 = call i32 @atomic_read(i32* %102)
  %104 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %15, align 8
  %105 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %184

106:                                              ; preds = %87, %83, %78, %72, %43
  %107 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %14, align 8
  %108 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %38
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = call i64 @ceph_snap(%struct.inode* %111)
  %113 = load i64, i64* @CEPH_SNAPDIR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @CEPH_MDS_OP_LOOKUPSNAP, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @CEPH_MDS_OP_LOOKUP, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @USE_ANY_MDS, align 4
  %124 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %121, i32 %122, i32 %123)
  store %struct.ceph_mds_request* %124, %struct.ceph_mds_request** %10, align 8
  %125 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %126 = call i64 @IS_ERR(%struct.ceph_mds_request* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %130 = call %struct.inode* @ERR_CAST(%struct.ceph_mds_request* %129)
  %131 = bitcast %struct.inode* %130 to %struct.dentry*
  store %struct.dentry* %131, %struct.dentry** %4, align 8
  br label %184

132:                                              ; preds = %119
  %133 = load %struct.dentry*, %struct.dentry** %6, align 8
  %134 = bitcast %struct.dentry* %133 to %struct.inode*
  %135 = call i32 @dget(%struct.inode* %134)
  %136 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %137 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %138, i32 0, i32 0
  store i32 2, i32* %139, align 8
  %140 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  %141 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %12, align 4
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = call i64 @ceph_security_xattr_wanted(%struct.inode* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %132
  %147 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %146, %132
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @cpu_to_le32(i32 %151)
  %153 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %154 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 8
  %157 = load %struct.inode*, %struct.inode** %5, align 8
  %158 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %159 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %158, i32 0, i32 2
  store %struct.inode* %157, %struct.inode** %159, align 8
  %160 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %161 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %162 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %161, i32 0, i32 1
  %163 = call i32 @set_bit(i32 %160, i32* %162)
  %164 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %165 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %166 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %164, i32* null, %struct.ceph_mds_request* %165)
  store i32 %166, i32* %13, align 4
  %167 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %168 = load %struct.dentry*, %struct.dentry** %6, align 8
  %169 = bitcast %struct.dentry* %168 to %struct.inode*
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @ceph_handle_snapdir(%struct.ceph_mds_request* %167, %struct.inode* %169, i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %173 = load %struct.dentry*, %struct.dentry** %6, align 8
  %174 = bitcast %struct.dentry* %173 to %struct.inode*
  %175 = load i32, i32* %13, align 4
  %176 = call %struct.inode* @ceph_finish_lookup(%struct.ceph_mds_request* %172, %struct.inode* %174, i32 %175)
  %177 = bitcast %struct.inode* %176 to %struct.dentry*
  store %struct.dentry* %177, %struct.dentry** %6, align 8
  %178 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %179 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %178)
  %180 = load %struct.dentry*, %struct.dentry** %6, align 8
  %181 = bitcast %struct.dentry* %180 to %struct.inode*
  %182 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %181)
  %183 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %183, %struct.dentry** %4, align 8
  br label %184

184:                                              ; preds = %150, %128, %92, %33
  %185 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %185
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @d_really_is_negative(%struct.inode*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @is_root_ceph_dentry(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @ceph_test_mount_opt(%struct.ceph_fs_client*, i32) #1

declare dso_local i64 @__ceph_dir_is_complete(%struct.ceph_inode_info*) #1

declare dso_local i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_add(%struct.inode*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.ceph_mds_request*) #1

declare dso_local i32 @dget(%struct.inode*) #1

declare dso_local i64 @ceph_security_xattr_wanted(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_handle_snapdir(%struct.ceph_mds_request*, %struct.inode*, i32) #1

declare dso_local %struct.inode* @ceph_finish_lookup(%struct.ceph_mds_request*, %struct.inode*, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
