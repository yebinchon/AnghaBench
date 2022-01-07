; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_can_modify_feature.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_can_modify_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_feature_attr = type { i32, i32 }

@BTRFS_FEATURE_COMPAT_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_SAFE_CLEAR = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_RO_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"btrfs: sysfs: unknown feature set %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_feature_attr*)* @can_modify_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_modify_feature(%struct.btrfs_feature_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_feature_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btrfs_feature_attr* %0, %struct.btrfs_feature_attr** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @BTRFS_FEATURE_COMPAT_SAFE_SET, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @BTRFS_FEATURE_COMPAT_SAFE_CLEAR, align 4
  store i32 %12, i32* %6, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @BTRFS_FEATURE_COMPAT_RO_SAFE_SET, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR, align 4
  store i32 %15, i32* %6, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SAFE_SET, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR, align 4
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %46

24:                                               ; preds = %16, %13, %10
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
