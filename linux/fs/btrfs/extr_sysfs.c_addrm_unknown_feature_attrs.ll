; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_addrm_unknown_feature_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_addrm_unknown_feature_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_feature_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.btrfs_fs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.attribute_group = type { i8*, %struct.attribute** }

@FEAT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"features\00", align 1
@supported_feature_masks = common dso_local global i64* null, align 8
@NUM_FEATURE_BITS = common dso_local global i32 0, align 4
@btrfs_feature_attrs = common dso_local global %struct.btrfs_feature_attr** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @addrm_unknown_feature_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrm_unknown_feature_attrs(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.attribute*], align 16
  %9 = alloca %struct.attribute_group, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_feature_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %86, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FEAT_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %9, i32 0, i32 1
  %20 = getelementptr inbounds [2 x %struct.attribute*], [2 x %struct.attribute*]* %8, i64 0, i64 0
  store %struct.attribute** %20, %struct.attribute*** %19, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @get_features(%struct.btrfs_fs_info* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64*, i64** @supported_feature_masks, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %10, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  br label %86

35:                                               ; preds = %17
  %36 = getelementptr inbounds [2 x %struct.attribute*], [2 x %struct.attribute*]* %8, i64 0, i64 1
  store %struct.attribute* null, %struct.attribute** %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %82, %35
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NUM_FEATURE_BITS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = and i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %82

49:                                               ; preds = %41
  %50 = load %struct.btrfs_feature_attr**, %struct.btrfs_feature_attr*** @btrfs_feature_attrs, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %50, i64 %52
  %54 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %54, i64 %56
  store %struct.btrfs_feature_attr* %57, %struct.btrfs_feature_attr** %11, align 8
  %58 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %59 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.attribute*], [2 x %struct.attribute*]* %8, i64 0, i64 0
  store %struct.attribute* %60, %struct.attribute** %61, align 16
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %66 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_merge_group(i32* %68, %struct.attribute_group* %9)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %90

74:                                               ; preds = %64
  br label %81

75:                                               ; preds = %49
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @sysfs_unmerge_group(i32* %79, %struct.attribute_group* %9)
  br label %81

81:                                               ; preds = %75, %74
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %37

85:                                               ; preds = %37
  br label %86

86:                                               ; preds = %85, %34
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %13

89:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @get_features(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @sysfs_merge_group(i32*, %struct.attribute_group*) #1

declare dso_local i32 @sysfs_unmerge_group(i32*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
