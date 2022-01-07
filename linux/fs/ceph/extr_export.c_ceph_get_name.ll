; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, %struct.ceph_mds_reply_info_parsed, i32, i8*, i32, %struct.inode* }
%struct.ceph_mds_reply_info_parsed = type { i64, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@CEPH_MDS_OP_LOOKUPNAME = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_R_PARENT_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"get_name %p ino %llx.%llx name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"get_name %p ino %llx.%llx err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.dentry*)* @ceph_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_get_name(%struct.dentry* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call i8* @d_inode(%struct.dentry* %13)
  %15 = bitcast i8* %14 to %struct.inode*
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call i64 @ceph_snap(%struct.inode* %16)
  %18 = load i64, i64* @CEPH_NOSNAP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @__get_snap_name(%struct.dentry* %21, i8* %22, %struct.dentry* %23)
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %28, align 8
  store %struct.ceph_mds_client* %29, %struct.ceph_mds_client** %8, align 8
  %30 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %31 = load i32, i32* @CEPH_MDS_OP_LOOKUPNAME, align 4
  %32 = load i32, i32* @USE_ANY_MDS, align 4
  %33 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %30, i32 %31, i32 %32)
  store %struct.ceph_mds_request* %33, %struct.ceph_mds_request** %9, align 8
  %34 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %35 = call i64 @IS_ERR(%struct.ceph_mds_request* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.ceph_mds_request* %38)
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %25
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i8* @d_inode(%struct.dentry* %41)
  %43 = call i32 @inode_lock(i8* %42)
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %46 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %45, i32 0, i32 5
  store %struct.inode* %44, %struct.inode** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i32 @ihold(%struct.inode* %47)
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = call i8* @d_inode(%struct.dentry* %49)
  %51 = call i32 @ceph_vino(i8* %50)
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call i8* @d_inode(%struct.dentry* %54)
  %56 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @CEPH_MDS_R_PARENT_LOCKED, align 4
  %59 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %65 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %66 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %64, i32* null, %struct.ceph_mds_request* %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = call i8* @d_inode(%struct.dentry* %67)
  %69 = call i32 @inode_unlock(i8* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %40
  %73 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %73, i32 0, i32 1
  store %struct.ceph_mds_reply_info_parsed* %74, %struct.ceph_mds_reply_info_parsed** %12, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %12, align 8
  %77 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %12, align 8
  %80 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i8* %75, i32 %78, i64 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %12, align 8
  %85 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load %struct.dentry*, %struct.dentry** %7, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @ceph_vinop(%struct.inode* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 (i8*, %struct.dentry*, i32, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.dentry* %88, i32 %90, i8* %91)
  br label %99

93:                                               ; preds = %40
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @ceph_vinop(%struct.inode* %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, %struct.dentry*, i32, ...) @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %72
  %100 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %101 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %37, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @d_inode(%struct.dentry*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @__get_snap_name(%struct.dentry*, i8*, %struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @inode_lock(i8*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_vino(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @inode_unlock(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @dout(i8*, %struct.dentry*, i32, ...) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
