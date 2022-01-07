; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_alloc_readdir_reply_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_alloc_readdir_reply_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.ceph_mds_reply_info_parsed }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ceph_mount_options* }
%struct.ceph_mount_options = type { i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { i32, i8* }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_alloc_readdir_reply_buffer(%struct.ceph_mds_request* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_request*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %8 = alloca %struct.ceph_mount_options*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ceph_mds_request* %0, %struct.ceph_mds_request** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %12)
  store %struct.ceph_inode_info* %13, %struct.ceph_inode_info** %6, align 8
  %14 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %14, i32 0, i32 3
  store %struct.ceph_mds_reply_info_parsed* %15, %struct.ceph_mds_reply_info_parsed** %7, align 8
  %16 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %21, align 8
  store %struct.ceph_mount_options* %22, %struct.ceph_mount_options** %8, align 8
  store i64 4, i64* %9, align 8
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @max(i32 %36, i32 1)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %8, align 8
  %40 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @min(i32 %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %43, %45
  %47 = call i32 @get_order(i64 %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %65, %2
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load i32, i32* @__GFP_NOWARN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @__get_free_pages(i32 %54, i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %7, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %7, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %68

65:                                               ; preds = %51
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %48

68:                                               ; preds = %64, %48
  %69 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %7, align 8
  %70 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %112

76:                                               ; preds = %68
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = udiv i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %8, align 8
  %86 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @min(i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %7, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %97 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %101 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %8, align 8
  %105 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %109 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i8* %107, i8** %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %76, %73
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
