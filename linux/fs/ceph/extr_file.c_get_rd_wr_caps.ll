; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_get_rd_wr_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_get_rd_wr_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_BUFFER = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.file*, i32, i32*)* @get_rd_wr_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rd_wr_caps(%struct.file* %0, i32* %1, %struct.file* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %61, %5
  %15 = load %struct.file*, %struct.file** %9, align 8
  %16 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %17 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @ceph_get_caps(%struct.file* %15, i32 %16, i32 %17, i32 %18, i32* %19, i32* null)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %70

25:                                               ; preds = %14
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = call i32 @file_inode(%struct.file* %26)
  %28 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %29 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ceph_try_get_caps(i32 %27, i32 %28, i32 %29, i32 0, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %25
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = call i32 @file_inode(%struct.file* %35)
  %37 = call i32 @ceph_inode(i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ceph_put_cap_refs(i32 %37, i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %70

51:                                               ; preds = %34
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %54 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @ceph_get_caps(%struct.file* %52, i32 %53, i32 %54, i32 -1, i32* %55, i32* null)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %70

61:                                               ; preds = %51
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = call i32 @file_inode(%struct.file* %62)
  %64 = call i32 @ceph_inode(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ceph_put_cap_refs(i32 %64, i32 %66)
  store i32 1, i32* %13, align 4
  br label %14

68:                                               ; preds = %25
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %59, %49, %23
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @ceph_get_caps(%struct.file*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ceph_try_get_caps(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @ceph_put_cap_refs(i32, i32) #1

declare dso_local i32 @ceph_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
