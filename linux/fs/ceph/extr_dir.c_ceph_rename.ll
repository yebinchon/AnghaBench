; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_4__, i32, i8*, i8*, i8*, i8*, i32, %struct.inode*, %struct.inode*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CEPH_MDS_OP_RENAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@CEPH_MDS_OP_RENAMESNAP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rename dir %p dentry %p to dir %p dentry %p\0A\00", align 1
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i8* null, align 8
@CEPH_CAP_FILE_EXCL = common dso_local global i8* null, align 8
@CEPH_CAP_LINK_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_LINK_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ceph_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_fs_client*, align 8
  %13 = alloca %struct.ceph_mds_client*, align 8
  %14 = alloca %struct.ceph_mds_request*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %19)
  store %struct.ceph_fs_client* %20, %struct.ceph_fs_client** %12, align 8
  %21 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %12, align 8
  %22 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %21, i32 0, i32 0
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %22, align 8
  store %struct.ceph_mds_client* %23, %struct.ceph_mds_client** %13, align 8
  %24 = load i32, i32* @CEPH_MDS_OP_RENAME, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %159

30:                                               ; preds = %5
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i64 @ceph_snap(%struct.inode* %31)
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i64 @ceph_snap(%struct.inode* %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EXDEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %159

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i64 @ceph_snap(%struct.inode* %40)
  %42 = load i64, i64* @CEPH_NOSNAP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = icmp eq %struct.inode* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i64 @ceph_snap(%struct.inode* %49)
  %51 = load i64, i64* @CEPH_SNAPDIR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @CEPH_MDS_OP_RENAMESNAP, align 4
  store i32 %54, i32* %15, align 4
  br label %58

55:                                               ; preds = %48, %44
  %56 = load i32, i32* @EROFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %159

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = icmp ne %struct.inode* %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @ceph_quota_is_same_realm(%struct.inode* %64, %struct.inode* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @EXDEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %159

71:                                               ; preds = %63, %59
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = load %struct.dentry*, %struct.dentry** %10, align 8
  %76 = call i32 @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.inode* %72, %struct.dentry* %73, %struct.inode* %74, %struct.dentry* %75)
  %77 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @USE_AUTH_MDS, align 4
  %80 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %77, i32 %78, i32 %79)
  store %struct.ceph_mds_request* %80, %struct.ceph_mds_request** %14, align 8
  %81 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %82 = call i64 @IS_ERR(%struct.ceph_mds_request* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %86 = call i32 @PTR_ERR(%struct.ceph_mds_request* %85)
  store i32 %86, i32* %6, align 4
  br label %159

87:                                               ; preds = %71
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = call i32 @ihold(%struct.inode* %88)
  %90 = load %struct.dentry*, %struct.dentry** %10, align 8
  %91 = call i8* @dget(%struct.dentry* %90)
  %92 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %92, i32 0, i32 12
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  %96 = load %struct.dentry*, %struct.dentry** %8, align 8
  %97 = call i8* @dget(%struct.dentry* %96)
  %98 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %99 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %98, i32 0, i32 11
  store i8* %97, i8** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %102 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %101, i32 0, i32 10
  store %struct.inode* %100, %struct.inode** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %105 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %104, i32 0, i32 9
  store %struct.inode* %103, %struct.inode** %105, align 8
  %106 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %107 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %108 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %107, i32 0, i32 8
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  %110 = load i8*, i8** @CEPH_CAP_FILE_SHARED, align 8
  %111 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %112 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @CEPH_CAP_FILE_EXCL, align 8
  %114 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %115 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @CEPH_CAP_FILE_SHARED, align 8
  %117 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %118 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @CEPH_CAP_FILE_EXCL, align 8
  %120 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %121 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @CEPH_CAP_LINK_SHARED, align 4
  %123 = load i32, i32* @CEPH_CAP_LINK_EXCL, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %126 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.dentry*, %struct.dentry** %10, align 8
  %128 = call i64 @d_really_is_positive(%struct.dentry* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %87
  %131 = load %struct.dentry*, %struct.dentry** %10, align 8
  %132 = call i32 @d_inode(%struct.dentry* %131)
  %133 = call i32 @ceph_drop_caps_for_unlink(i32 %132)
  %134 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %135 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %87
  %137 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %140 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %137, %struct.inode* %138, %struct.ceph_mds_request* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %136
  %144 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %145 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = load %struct.dentry*, %struct.dentry** %8, align 8
  %153 = load %struct.dentry*, %struct.dentry** %10, align 8
  %154 = call i32 @d_move(%struct.dentry* %152, %struct.dentry* %153)
  br label %155

155:                                              ; preds = %151, %143, %136
  %156 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %14, align 8
  %157 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %156)
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %155, %84, %68, %55, %36, %27
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ceph_quota_is_same_realm(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i8* @dget(%struct.dentry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @ceph_drop_caps_for_unlink(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
