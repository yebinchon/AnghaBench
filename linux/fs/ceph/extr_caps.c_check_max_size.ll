; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_check_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_check_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"write %p at large endoff %llu, req max_size\0A\00", align 1
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CHECK_CAPS_AUTHONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64)* @check_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_max_size(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %7)
  store %struct.ceph_inode_info* %8, %struct.ceph_inode_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %9, i32 0, i32 3
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.inode* %24, i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %17, %2
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %37 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %46 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %57 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %52, %44, %35, %30
  %62 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %63 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %62, i32 0, i32 3
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %69 = load i32, i32* @CHECK_CAPS_AUTHONLY, align 4
  %70 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %68, i32 %69, i32* null)
  br label %71

71:                                               ; preds = %67, %61
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
