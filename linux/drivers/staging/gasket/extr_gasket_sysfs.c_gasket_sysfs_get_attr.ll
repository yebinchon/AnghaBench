; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_sysfs_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gasket_sysfs_mapping = type { i32, %struct.gasket_sysfs_attribute* }

@.str = private unnamed_addr constant [46 x i8] c"Unable to find match for device_attribute %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device* %0, %struct.device_attribute* %1) #0 {
  %3 = alloca %struct.gasket_sysfs_attribute*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gasket_sysfs_mapping*, align 8
  %9 = alloca %struct.gasket_sysfs_attribute*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %10)
  store %struct.gasket_sysfs_mapping* %11, %struct.gasket_sysfs_mapping** %8, align 8
  store %struct.gasket_sysfs_attribute* null, %struct.gasket_sysfs_attribute** %9, align 8
  %12 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %13 = icmp ne %struct.gasket_sysfs_mapping* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.gasket_sysfs_attribute* null, %struct.gasket_sysfs_attribute** %3, align 8
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %17 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %16, i32 0, i32 1
  %18 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %17, align 8
  store %struct.gasket_sysfs_attribute* %18, %struct.gasket_sysfs_attribute** %9, align 8
  %19 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %8, align 8
  %20 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %47, %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %27, i64 %29
  %31 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %36 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcmp(i32 %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %42, i64 %44
  store %struct.gasket_sysfs_attribute* %45, %struct.gasket_sysfs_attribute** %3, align 8
  br label %57

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %53 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55)
  store %struct.gasket_sysfs_attribute* null, %struct.gasket_sysfs_attribute** %3, align 8
  br label %57

57:                                               ; preds = %50, %41, %14
  %58 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %3, align 8
  ret %struct.gasket_sysfs_attribute* %58
}

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
