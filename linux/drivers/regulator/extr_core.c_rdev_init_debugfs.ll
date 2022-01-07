; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_rdev_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_rdev_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@debugfs_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create debugfs directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"use_count\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"open_count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bypass_count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*)* @rdev_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdev_init_debugfs(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %13 = call i8* @rdev_get_name(%struct.regulator_dev* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i32, i32* @NAME_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = trunc i64 %15 to i32
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i8* @dev_name(%struct.device* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @snprintf(i8* %17, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  store i8* %17, i8** %4, align 8
  br label %34

34:                                               ; preds = %28, %20, %1
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @debugfs_root, align 4
  %37 = call i32 @debugfs_create_dir(i8* %35, i32 %36)
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %46 = call i32 @rdev_warn(%struct.regulator_dev* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %66

47:                                               ; preds = %34
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 3
  %53 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %50, i32* %52)
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %58 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %57, i32 0, i32 2
  %59 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %56, i32* %58)
  %60 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %61 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %64 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %63, i32 0, i32 0
  %65 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %62, i32* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %47, %44
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

declare dso_local i8* @rdev_get_name(%struct.regulator_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @rdev_warn(%struct.regulator_dev*, i8*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
