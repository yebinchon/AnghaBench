; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_aio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_aio_request = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 (%struct.TYPE_2__*, i32, i32)* }
%struct.ceph_inode_info = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ceph_aio_complete %p rc %d\0A\00", align 1
@CHECK_CAPS_AUTHONLY = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ceph_aio_request*)* @ceph_aio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_aio_complete(%struct.inode* %0, %struct.ceph_aio_request* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_aio_request*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ceph_aio_request* %1, %struct.ceph_aio_request** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %9)
  store %struct.ceph_inode_info* %10, %struct.ceph_inode_info** %5, align 8
  %11 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %11, i32 0, i32 5
  %13 = call i32 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %32
  %38 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i64 @i_size_read(%struct.inode* %49)
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @ceph_inode_set_size(%struct.inode* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %59 = load i32, i32* @CHECK_CAPS_AUTHONLY, align 4
  %60 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %58, i32 %59, i32* null)
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %64 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load i32, i32* @CEPH_INLINE_NONE, align 4
  %67 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %68 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %70 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %71 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %72 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %71, i32 0, i32 2
  %73 = call i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info* %69, i32 %70, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %75 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %62
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @__mark_inode_dirty(%struct.inode* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %62
  br label %84

84:                                               ; preds = %83, %32, %26
  %85 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %86 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %87 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %85, i32 %95)
  %97 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %98 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %100, align 8
  %102 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %103 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 %101(%struct.TYPE_2__* %104, i32 %105, i32 0)
  %107 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %108 = getelementptr inbounds %struct.ceph_aio_request, %struct.ceph_aio_request* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ceph_free_cap_flush(i32 %109)
  %111 = load %struct.ceph_aio_request*, %struct.ceph_aio_request** %4, align 8
  %112 = call i32 @kfree(%struct.ceph_aio_request* %111)
  br label %113

113:                                              ; preds = %94, %15
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ceph_inode_set_size(%struct.inode*, i64) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_mark_dirty_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @ceph_free_cap_flush(i32) #1

declare dso_local i32 @kfree(%struct.ceph_aio_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
