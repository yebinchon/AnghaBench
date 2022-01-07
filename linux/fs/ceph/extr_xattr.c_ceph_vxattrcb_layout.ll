; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32, i32 }
%struct.ceph_string = type { i64, i8* }

@.str = private unnamed_addr constant [17 x i8] c" pool_namespace=\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ceph_vxattrcb_layout %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"stripe_unit=%u stripe_count=%u object_size=%u pool=\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"stripe_unit=%u stripe_count=%u object_size=%u pool=%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ceph_inode_info*, i8*, i64)* @ceph_vxattrcb_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_vxattrcb_layout(%struct.ceph_inode_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca %struct.ceph_osd_client*, align 8
  %9 = alloca %struct.ceph_string*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %20)
  store %struct.ceph_fs_client* %21, %struct.ceph_fs_client** %7, align 8
  %22 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %23 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.ceph_osd_client* %25, %struct.ceph_osd_client** %8, align 8
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i64 0, i64* %15, align 8
  %30 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ceph_string* @ceph_try_get_string(i32 %33)
  store %struct.ceph_string* %34, %struct.ceph_string** %9, align 8
  %35 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %35, i32 0, i32 1
  %37 = call i32 @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %36)
  %38 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %8, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @ceph_pg_pool_name_by_id(i32 %43, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %3
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %50 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %59 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %49, i32 128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %57, i32 %61)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add i64 %63, %65
  store i64 %66, i64* %15, align 8
  br label %84

67:                                               ; preds = %3
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %69 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %70 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %78 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i64 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %68, i32 128, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %76, i32 %80, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  store i64 %83, i64* %15, align 8
  br label %84

84:                                               ; preds = %67, %48
  %85 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %86 = icmp ne %struct.ceph_string* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %91 = getelementptr inbounds %struct.ceph_string, %struct.ceph_string* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %15, align 8
  br label %96

96:                                               ; preds = %87, %84
  %97 = load i64, i64* %15, align 8
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %152

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %104 = load i64, i64* %14, align 8
  %105 = call i32 @memcpy(i8* %102, i8* %103, i64 %104)
  %106 = load i64, i64* %14, align 8
  store i64 %106, i64* %16, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  %111 = call i64 @strlen(i8* %110)
  store i64 %111, i64* %14, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @memcpy(i8* %114, i8* %115, i64 %116)
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %16, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %16, align 8
  br label %121

121:                                              ; preds = %109, %101
  %122 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %123 = icmp ne %struct.ceph_string* %122, null
  br i1 %123, label %124, label %151

124:                                              ; preds = %121
  %125 = load i8*, i8** %12, align 8
  %126 = call i64 @strlen(i8* %125)
  store i64 %126, i64* %14, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @memcpy(i8* %129, i8* %130, i64 %131)
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %16, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %16, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %16, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %140 = getelementptr inbounds %struct.ceph_string, %struct.ceph_string* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %143 = getelementptr inbounds %struct.ceph_string, %struct.ceph_string* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @memcpy(i8* %138, i8* %141, i64 %144)
  %146 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %147 = getelementptr inbounds %struct.ceph_string, %struct.ceph_string* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %124, %121
  br label %152

152:                                              ; preds = %151, %96
  %153 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %8, align 8
  %154 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %153, i32 0, i32 0
  %155 = call i32 @up_read(i32* %154)
  %156 = load %struct.ceph_string*, %struct.ceph_string** %9, align 8
  %157 = call i32 @ceph_put_string(%struct.ceph_string* %156)
  %158 = load i64, i64* %16, align 8
  ret i64 %158
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local %struct.ceph_string* @ceph_try_get_string(i32) #1

declare dso_local i32 @dout(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @ceph_pg_pool_name_by_id(i32, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ceph_put_string(%struct.ceph_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
