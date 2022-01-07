; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_do_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_do_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.page = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, %struct.TYPE_8__, %struct.page*, %struct.TYPE_6__, %struct.inode* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"do_getattr inode %p SNAPDIR\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"do_getattr inode %p mask %s mode 0%o\0A\00", align 1
@CEPH_STAT_RSTAT = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@CEPH_MDS_OP_GETATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"do_getattr result=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ceph_do_getattr(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_fs_client*, align 8
  %11 = alloca %struct.ceph_mds_client*, align 8
  %12 = alloca %struct.ceph_mds_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %18)
  store %struct.ceph_fs_client* %19, %struct.ceph_fs_client** %10, align 8
  %20 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %10, align 8
  %21 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %20, i32 0, i32 0
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %21, align 8
  store %struct.ceph_mds_client* %22, %struct.ceph_mds_client** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i64 @ceph_snap(%struct.inode* %23)
  %25 = load i64, i64* @CEPH_SNAPDIR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %28)
  store i32 0, i32* %5, align 4
  br label %125

30:                                               ; preds = %4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ceph_cap_string(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %31, i32 %33, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @ceph_inode(%struct.inode* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ceph_caps_issued_mask(i32 %42, i32 %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %125

47:                                               ; preds = %40, %30
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @CEPH_STAT_RSTAT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @USE_AUTH_MDS, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @USE_ANY_MDS, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %11, align 8
  %59 = load i32, i32* @CEPH_MDS_OP_GETATTR, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %58, i32 %59, i32 %60)
  store %struct.ceph_mds_request* %61, %struct.ceph_mds_request** %12, align 8
  %62 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %63 = call i64 @IS_ERR(%struct.ceph_mds_request* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %67 = call i32 @PTR_ERR(%struct.ceph_mds_request* %66)
  store i32 %67, i32* %5, align 4
  br label %125

68:                                               ; preds = %56
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 4
  store %struct.inode* %69, %struct.inode** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @ihold(%struct.inode* %72)
  %74 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %75 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %83, i32 0, i32 2
  store %struct.page* %82, %struct.page** %84, align 8
  %85 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %11, align 8
  %86 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %87 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %85, i32* null, %struct.ceph_mds_request* %86)
  store i32 %87, i32* %14, align 4
  %88 = load %struct.page*, %struct.page** %7, align 8
  %89 = icmp ne %struct.page* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %68
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %118

104:                                              ; preds = %93
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @ENODATA, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %117

111:                                              ; preds = %104
  %112 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %113 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %111, %108
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %90, %68
  %120 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %12, align 8
  %121 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %65, %46, %27
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i64 @ceph_caps_issued_mask(i32, i32, i32) #1

declare dso_local i32 @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
