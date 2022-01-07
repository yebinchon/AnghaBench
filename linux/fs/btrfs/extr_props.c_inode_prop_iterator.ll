; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_inode_prop_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_inode_prop_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_handler = type { i32 (%struct.inode*, i8*, i64)*, i32 }
%struct.inode = type opaque
%struct.inode.0 = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.btrfs_root* }

@.str = private unnamed_addr constant [51 x i8] c"error applying prop %s to ino %llu (root %llu): %d\00", align 1
@BTRFS_INODE_HAS_PROPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.prop_handler*, i8*, i64)* @inode_prop_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_prop_iterator(i8* %0, %struct.prop_handler* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.prop_handler*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode.0*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.prop_handler* %1, %struct.prop_handler** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.inode.0*
  store %struct.inode.0* %13, %struct.inode.0** %9, align 8
  %14 = load %struct.inode.0*, %struct.inode.0** %9, align 8
  %15 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode.0* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %10, align 8
  %18 = load %struct.prop_handler*, %struct.prop_handler** %6, align 8
  %19 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %18, i32 0, i32 0
  %20 = load i32 (%struct.inode*, i8*, i64)*, i32 (%struct.inode*, i8*, i64)** %19, align 8
  %21 = load %struct.inode.0*, %struct.inode.0** %9, align 8
  %22 = bitcast %struct.inode.0* %21 to %struct.inode*
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 %20(%struct.inode* %22, i8* %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %4
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.prop_handler*, %struct.prop_handler** %6, align 8
  %34 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.inode.0*, %struct.inode.0** %9, align 8
  %37 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode.0* %36)
  %38 = call i32 @btrfs_ino(%struct.TYPE_5__* %37)
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @btrfs_warn(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %4
  %46 = load i32, i32* @BTRFS_INODE_HAS_PROPS, align 4
  %47 = load %struct.inode.0*, %struct.inode.0** %9, align 8
  %48 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode.0* %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %45, %29
  ret void
}

declare dso_local %struct.TYPE_5__* @BTRFS_I(%struct.inode.0*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
