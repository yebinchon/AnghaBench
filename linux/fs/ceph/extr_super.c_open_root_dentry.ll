; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_open_root_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_open_root_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque
%struct.ceph_fs_client = type { %struct.TYPE_8__*, %struct.ceph_mds_client* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i64, i32, %struct.inode*, %struct.TYPE_10__, i32, %struct.TYPE_6__, i32 }
%struct.inode = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"open_root_inode opening '%s'\0A\00", align 1
@CEPH_MDS_OP_GETATTR = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_INO_ROOT = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"open_root_inode success\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"open_root_inode success, root dentry is %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.ceph_fs_client*, i8*, i64)* @open_root_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @open_root_dentry(%struct.ceph_fs_client* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ceph_fs_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %13, i32 0, i32 1
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %14, align 8
  store %struct.ceph_mds_client* %15, %struct.ceph_mds_client** %8, align 8
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %19 = load i32, i32* @CEPH_MDS_OP_GETATTR, align 4
  %20 = load i32, i32* @USE_ANY_MDS, align 4
  %21 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %18, i32 %19, i32 %20)
  store %struct.ceph_mds_request* %21, %struct.ceph_mds_request** %9, align 8
  %22 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %23 = call i64 @IS_ERR(%struct.ceph_mds_request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %27 = call i8* @ERR_CAST(%struct.ceph_mds_request* %26)
  %28 = bitcast i8* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %4, align 8
  br label %107

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call i32 @kstrdup(i8* %30, i32 %31)
  %33 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i8* @ERR_PTR(i32 %41)
  %43 = bitcast i8* %42 to %struct.dentry*
  store %struct.dentry* %43, %struct.dentry** %11, align 8
  br label %103

44:                                               ; preds = %29
  %45 = load i32, i32* @CEPH_INO_ROOT, align 4
  %46 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @CEPH_NOSNAP, align 4
  %50 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %55 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  %57 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %72 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %71, i32 0, i32 1
  store i32 2, i32* %72, align 8
  %73 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %74 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %75 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %73, i32* null, %struct.ceph_mds_request* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %44
  %79 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %80 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %79, i32 0, i32 2
  %81 = load %struct.inode*, %struct.inode** %80, align 8
  store %struct.inode* %81, %struct.inode** %12, align 8
  %82 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %83 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %82, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %83, align 8
  %84 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = call i8* @d_make_root(%struct.inode* %85)
  %87 = bitcast i8* %86 to %struct.dentry*
  store %struct.dentry* %87, %struct.dentry** %11, align 8
  %88 = load %struct.dentry*, %struct.dentry** %11, align 8
  %89 = icmp ne %struct.dentry* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i8* @ERR_PTR(i32 %92)
  %94 = bitcast i8* %93 to %struct.dentry*
  store %struct.dentry* %94, %struct.dentry** %11, align 8
  br label %103

95:                                               ; preds = %78
  %96 = load %struct.dentry*, %struct.dentry** %11, align 8
  %97 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %96)
  br label %102

98:                                               ; preds = %44
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @ERR_PTR(i32 %99)
  %101 = bitcast i8* %100 to %struct.dentry*
  store %struct.dentry* %101, %struct.dentry** %11, align 8
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102, %90, %39
  %104 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %105 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %104)
  %106 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %106, %struct.dentry** %4, align 8
  br label %107

107:                                              ; preds = %103, %25
  %108 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %108
}

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i8* @ERR_CAST(%struct.ceph_mds_request*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i8* @d_make_root(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
