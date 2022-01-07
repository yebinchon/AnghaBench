; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ceph_fs_client = type { i32 }

@CEPH_STAT_CAP_SIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @ceph_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %16)
  store %struct.ceph_fs_client* %17, %struct.ceph_fs_client** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @inode_lock(%struct.inode* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %22, %3
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i32, i32* @CEPH_STAT_CAP_SIZE, align 4
  %31 = call i64 @ceph_do_getattr(%struct.inode* %29, i32 %30, i32 0)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %89

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i64 @i_size_read(%struct.inode* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %80 [
    i32 129, label %40
    i32 131, label %44
    i32 130, label %57
    i32 128, label %68
  ]

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %80

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  br label %89

51:                                               ; preds = %44
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %80

57:                                               ; preds = %36
  %58 = load i64, i64* %5, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %57
  %65 = load i64, i64* @ENXIO, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %10, align 8
  br label %89

67:                                               ; preds = %60
  br label %80

68:                                               ; preds = %36
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %68
  %76 = load i64, i64* @ENXIO, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %10, align 8
  br label %89

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %36, %78, %67, %51, %40
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %85 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i64 %83, i32 %86)
  %88 = call i64 @vfs_setpos(%struct.file* %81, i64 %82, i32 %87)
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %80, %75, %64, %47, %34
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i32 @inode_unlock(%struct.inode* %90)
  %92 = load i64, i64* %10, align 8
  ret i64 %92
}

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ceph_do_getattr(%struct.inode*, i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @vfs_setpos(%struct.file*, i64, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
