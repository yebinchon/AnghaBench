; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.inode*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"link in dir %p old_dentry %p dentry %p\0A\00", align 1
@CEPH_MDS_OP_LINK = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_LINK_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_LINK_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ceph_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_mds_client*, align 8
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %14)
  store %struct.ceph_fs_client* %15, %struct.ceph_fs_client** %8, align 8
  %16 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %17 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %16, i32 0, i32 0
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %17, align 8
  store %struct.ceph_mds_client* %18, %struct.ceph_mds_client** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @ceph_snap(%struct.inode* %19)
  %21 = load i64, i64* @CEPH_NOSNAP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EROFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.inode* %27, %struct.dentry* %28, %struct.dentry* %29)
  %31 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %32 = load i32, i32* @CEPH_MDS_OP_LINK, align 4
  %33 = load i32, i32* @USE_AUTH_MDS, align 4
  %34 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %31, i32 %32, i32 %33)
  store %struct.ceph_mds_request* %34, %struct.ceph_mds_request** %10, align 8
  %35 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %36 = call i64 @IS_ERR(%struct.ceph_mds_request* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @d_drop(%struct.dentry* %39)
  %41 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.ceph_mds_request* %41)
  store i32 %42, i32* %4, align 4
  br label %102

43:                                               ; preds = %26
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = call i8* @dget(%struct.dentry* %44)
  %46 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %49 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i8* @dget(%struct.dentry* %50)
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %56 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %55, i32 0, i32 6
  store %struct.inode* %54, %struct.inode** %56, align 8
  %57 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %58 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %58, i32 0, i32 5
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %62 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %65 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @CEPH_CAP_LINK_SHARED, align 4
  %68 = load i32, i32* @CEPH_CAP_LINK_EXCL, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %75 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %72, %struct.inode* %73, %struct.ceph_mds_request* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %43
  %79 = load %struct.dentry*, %struct.dentry** %7, align 8
  %80 = call i32 @d_drop(%struct.dentry* %79)
  br label %98

81:                                               ; preds = %43
  %82 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %83 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  %90 = load %struct.dentry*, %struct.dentry** %5, align 8
  %91 = call i32 @d_inode(%struct.dentry* %90)
  %92 = call i32 @ihold(i32 %91)
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = load %struct.dentry*, %struct.dentry** %5, align 8
  %95 = call i32 @d_inode(%struct.dentry* %94)
  %96 = call i32 @d_instantiate(%struct.dentry* %93, i32 %95)
  br label %97

97:                                               ; preds = %89, %81
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %100 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %38, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i8* @dget(%struct.dentry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
