; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fid = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@BTRFS_FID_SIZE_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_NON_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITHOUT_PARENT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE_ROOT = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT_ROOT = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @btrfs_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.btrfs_fid*
  store %struct.btrfs_fid* %15, %struct.btrfs_fid** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %27, i32* %5, align 4
  br label %100

28:                                               ; preds = %20, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %35, i32* %5, align 4
  br label %100

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @FILEID_BTRFS_WITHOUT_PARENT, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %40)
  %42 = call i32 @btrfs_ino(%struct.TYPE_9__* %41)
  %43 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %44 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = icmp ne %struct.inode* %59, null
  br i1 %60, label %61, label %96

61:                                               ; preds = %37
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %68 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %73 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %83 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %61
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %89 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE_ROOT, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @FILEID_BTRFS_WITH_PARENT_ROOT, align 4
  store i32 %91, i32* %12, align 4
  br label %95

92:                                               ; preds = %61
  %93 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %86
  br label %96

96:                                               ; preds = %95, %37
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %32, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @btrfs_ino(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
