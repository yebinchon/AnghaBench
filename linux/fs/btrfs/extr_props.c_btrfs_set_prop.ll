; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.prop_handler = type { i32 (%struct.inode.0*, i8*, i64)*, i32 }
%struct.inode.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BTRFS_INODE_HAS_PROPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_set_prop(%struct.btrfs_trans_handle* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.prop_handler*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = call %struct.prop_handler* @find_prop_handler(i8* %16, i32* null)
  store %struct.prop_handler* %17, %struct.prop_handler** %14, align 8
  %18 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %19 = icmp ne %struct.prop_handler* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %90

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %30 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %27, %struct.inode* %28, i32 %31, i8* null, i64 0, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %90

38:                                               ; preds = %26
  %39 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %40 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %39, i32 0, i32 0
  %41 = load i32 (%struct.inode.0*, i8*, i64)*, i32 (%struct.inode.0*, i8*, i64)** %40, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = bitcast %struct.inode* %42 to %struct.inode.0*
  %44 = call i32 %41(%struct.inode.0* %43, i8* null, i64 0)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %7, align 4
  br label %90

50:                                               ; preds = %23
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %54 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %51, %struct.inode* %52, i32 %55, i8* %56, i64 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %7, align 4
  br label %90

64:                                               ; preds = %50
  %65 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %66 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %65, i32 0, i32 0
  %67 = load i32 (%struct.inode.0*, i8*, i64)*, i32 (%struct.inode.0*, i8*, i64)** %66, align 8
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = bitcast %struct.inode* %68 to %struct.inode.0*
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 %67(%struct.inode.0* %69, i8* %70, i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = load %struct.prop_handler*, %struct.prop_handler** %14, align 8
  %79 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %76, %struct.inode* %77, i32 %80, i8* null, i64 0, i32 %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %90

84:                                               ; preds = %64
  %85 = load i32, i32* @BTRFS_INODE_HAS_PROPS, align 4
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @set_bit(i32 %85, i32* %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %75, %62, %38, %36, %20
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.prop_handler* @find_prop_handler(i8*, i32*) #1

declare dso_local i32 @btrfs_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i32, i8*, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
