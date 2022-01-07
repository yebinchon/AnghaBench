; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.inode*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"rmsnap dir %p '%pd' dn %p\0A\00", align 1
@CEPH_MDS_OP_RMSNAP = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"unlink/rmdir dir %p dn %p inode %p\0A\00", align 1
@CEPH_MDS_OP_RMDIR = common dso_local global i32 0, align 4
@CEPH_MDS_OP_UNLINK = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ceph_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ceph_fs_client*, align 8
  %6 = alloca %struct.ceph_mds_client*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ceph_mds_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %13)
  store %struct.ceph_fs_client* %14, %struct.ceph_fs_client** %5, align 8
  %15 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %16 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %15, i32 0, i32 0
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %16, align 8
  store %struct.ceph_mds_client* %17, %struct.ceph_mds_client** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = bitcast %struct.dentry* %18 to %struct.inode*
  %20 = call %struct.inode* @d_inode(%struct.inode* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i64 @ceph_snap(%struct.inode* %23)
  %25 = load i64, i64* @CEPH_SNAPDIR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = bitcast %struct.dentry* %29 to %struct.inode*
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = bitcast %struct.dentry* %31 to %struct.inode*
  %33 = call i32 @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.inode* %28, %struct.inode* %30, %struct.inode* %32)
  %34 = load i32, i32* @CEPH_MDS_OP_RMSNAP, align 4
  store i32 %34, i32* %10, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call i64 @ceph_snap(%struct.inode* %36)
  %38 = load i64, i64* @CEPH_NOSNAP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = bitcast %struct.dentry* %42 to %struct.inode*
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call i32 @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %41, %struct.inode* %43, %struct.inode* %44)
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = bitcast %struct.dentry* %46 to %struct.inode*
  %48 = call i64 @d_is_dir(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @CEPH_MDS_OP_RMDIR, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @CEPH_MDS_OP_UNLINK, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %10, align 4
  br label %57

56:                                               ; preds = %35
  br label %115

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %27
  %59 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @USE_AUTH_MDS, align 4
  %62 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %59, i32 %60, i32 %61)
  store %struct.ceph_mds_request* %62, %struct.ceph_mds_request** %8, align 8
  %63 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %64 = call i64 @IS_ERR(%struct.ceph_mds_request* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %68 = call i32 @PTR_ERR(%struct.ceph_mds_request* %67)
  store i32 %68, i32* %9, align 4
  br label %115

69:                                               ; preds = %58
  %70 = load %struct.dentry*, %struct.dentry** %4, align 8
  %71 = bitcast %struct.dentry* %70 to %struct.inode*
  %72 = call i32 @dget(%struct.inode* %71)
  %73 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %75, i32 0, i32 0
  store i32 2, i32* %76, align 8
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %78, i32 0, i32 6
  store %struct.inode* %77, %struct.inode** %79, align 8
  %80 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %81 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %82 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %81, i32 0, i32 5
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %85 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %86 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %88 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %89 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i32 @ceph_drop_caps_for_unlink(%struct.inode* %90)
  %92 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %97 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %94, %struct.inode* %95, %struct.ceph_mds_request* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %69
  %101 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %102 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %100
  %109 = load %struct.dentry*, %struct.dentry** %4, align 8
  %110 = bitcast %struct.dentry* %109 to %struct.inode*
  %111 = call i32 @d_delete(%struct.inode* %110)
  br label %112

112:                                              ; preds = %108, %100, %69
  %113 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %8, align 8
  %114 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %113)
  br label %115

115:                                              ; preds = %112, %66, %56
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i64 @d_is_dir(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @dget(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_drop_caps_for_unlink(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @d_delete(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
