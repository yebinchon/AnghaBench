; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_release_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_release_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@QGROUP_RELEASE = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@EXTENT_QGROUP_RESERVED = common dso_local global i32 0, align 4
@QGROUP_FREE = common dso_local global i32 0, align 4
@BTRFS_QGROUP_RSV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.extent_changeset*, i64, i64, i32)* @__btrfs_qgroup_release_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_qgroup_release_data(%struct.inode* %0, %struct.extent_changeset* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_changeset*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.extent_changeset, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_changeset* %1, %struct.extent_changeset** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @QGROUP_RELEASE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %16, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %102

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %32 = icmp ne %struct.extent_changeset* %31, null
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %41 = icmp ne %struct.extent_changeset* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @qgroup_free_reserved_data(%struct.inode* %43, %struct.extent_changeset* %44, i64 %45, i64 %46)
  store i32 %47, i32* %6, align 4
  br label %102

48:                                               ; preds = %39, %33
  %49 = call i32 @extent_changeset_init(%struct.extent_changeset* %12)
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  %57 = sub nsw i64 %56, 1
  %58 = load i32, i32* @EXTENT_QGROUP_RESERVED, align 4
  %59 = call i32 @clear_record_extent_bits(i32* %52, i64 %53, i64 %57, i32 %58, %struct.extent_changeset* %12)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %99

63:                                               ; preds = %48
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @QGROUP_FREE, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @trace_btrfs_qgroup_release_data(%struct.inode* %69, i64 %70, i64 %71, i32 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %68
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BTRFS_QGROUP_RSV_DATA, align 4
  %95 = call i32 @btrfs_qgroup_free_refroot(%struct.TYPE_7__* %84, i32 %91, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %78, %68
  %97 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %12, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %96, %62
  %100 = call i32 @extent_changeset_release(%struct.extent_changeset* %12)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %42, %26
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qgroup_free_reserved_data(%struct.inode*, %struct.extent_changeset*, i64, i64) #1

declare dso_local i32 @extent_changeset_init(%struct.extent_changeset*) #1

declare dso_local i32 @clear_record_extent_bits(i32*, i64, i64, i32, %struct.extent_changeset*) #1

declare dso_local i32 @trace_btrfs_qgroup_release_data(%struct.inode*, i64, i64, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_free_refroot(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @extent_changeset_release(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
