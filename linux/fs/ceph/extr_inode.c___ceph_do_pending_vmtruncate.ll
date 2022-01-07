; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_do_pending_vmtruncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_do_pending_vmtruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_inode_info = type { i64, i32, i32, i64, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"__do_pending_vmtruncate %p none pending\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"__do_pending_vmtruncate %p flushing snaps first\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"__do_pending_vmtruncate %p (%d) to %lld\0A\00", align 1
@CHECK_CAPS_AUTHONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_do_pending_vmtruncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %7)
  store %struct.ceph_inode_info* %8, %struct.ceph_inode_info** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %9, i32 0, i32 5
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %100, %37, %1
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 6
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.inode* %21)
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 6
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 5
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %115

29:                                               ; preds = %12
  %30 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %39 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %38, i32 0, i32 6
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @filemap_write_and_wait_range(i32* %44, i32 0, i32 %49)
  br label %12

51:                                               ; preds = %29
  %52 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %58 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ true, %51 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON_ONCE(i32 %63)
  %65 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %66 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %4, align 8
  %68 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %73 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %71, i64 %74, i64 %75)
  %77 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %78 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %77, i32 0, i32 6
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @truncate_pagecache(%struct.inode* %80, i64 %81)
  %83 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %84 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %83, i32 0, i32 6
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %88 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %61
  %92 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %93 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %61
  %95 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %96 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %95, i32 0, i32 6
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %12

101:                                              ; preds = %94
  %102 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %103 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %102, i32 0, i32 5
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %109 = load i32, i32* @CHECK_CAPS_AUTHONLY, align 4
  %110 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %108, i32 %109, i32* null)
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %113 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %112, i32 0, i32 4
  %114 = call i32 @wake_up_all(i32* %113)
  br label %115

115:                                              ; preds = %111, %20
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
