; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_do_invalidate_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_do_invalidate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i64, i64, i32, i32 }
%struct.ceph_fs_client = type { i32 }

@CEPH_MOUNT_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"invalidate_pages %p %lld forced umount\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalidate_pages %p gen %d revoking %d\0A\00", align 1
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalidate_pages %p fails\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalidate_pages %p gen %d successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"invalidate_pages %p gen %d raced, now %d revoking %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ceph_do_invalidate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_do_invalidate_pages(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca %struct.ceph_fs_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %7)
  store %struct.ceph_inode_info* %8, %struct.ceph_inode_info** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %9)
  store %struct.ceph_fs_client* %10, %struct.ceph_fs_client** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @READ_ONCE(i32 %16)
  %18 = load i64, i64* @CEPH_MOUNT_SHUTDOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i32 @ceph_ino(%struct.inode* %22)
  %24 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.inode* %21, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @mapping_set_error(i32 %27, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call i32 @truncate_pagecache(%struct.inode* %31, i32 0)
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %131

36:                                               ; preds = %1
  %37 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %38 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %37, i32 0, i32 3
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %42 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %45 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, %struct.inode*, i64, ...) @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %40, i64 %43, i64 %46)
  %48 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %52 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %36
  %56 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %57 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %58 = call i64 @__ceph_caps_revoking_other(%struct.ceph_inode_info* %56, i32* null, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %62, i32 0, i32 3
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %66 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %131

68:                                               ; preds = %36
  %69 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %70 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  %72 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %73 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %72, i32 0, i32 3
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.inode*, %struct.inode** %2, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @invalidate_inode_pages2(i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %68
  %84 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %85 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %84, i32 0, i32 3
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %89 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %83
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %95 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.inode*, %struct.inode** %2, align 8
  %100 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %101 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, %struct.inode*, i64, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %99, i64 %102)
  %104 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %105 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  store i32 1, i32* %6, align 4
  br label %124

108:                                              ; preds = %92, %83
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %112 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %115 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, %struct.inode*, i64, ...) @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.inode* %109, i64 %110, i64 %113, i64 %116)
  %118 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %119 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %120 = call i64 @__ceph_caps_revoking_other(%struct.ceph_inode_info* %118, i32* null, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %98
  %125 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %126 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %129 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %131

131:                                              ; preds = %124, %61, %20
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %136 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %135, i32 0, i32* null)
  br label %137

137:                                              ; preds = %134, %131
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.inode*, i32) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i64, ...) #1

declare dso_local i64 @__ceph_caps_revoking_other(%struct.ceph_inode_info*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @pr_err(i8*, %struct.inode*) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
