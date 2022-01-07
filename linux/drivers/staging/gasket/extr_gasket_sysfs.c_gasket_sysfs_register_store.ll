; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_register_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_register_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gasket_sysfs_mapping = type { %struct.gasket_dev* }
%struct.gasket_dev = type { i32 }
%struct.gasket_sysfs_attribute = type { i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"sysfs register write format: \220x<hex value>\22\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to parse input as 64-bit hex value: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Device driver may have been removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gasket_sysfs_register_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gasket_sysfs_mapping*, align 8
  %12 = alloca %struct.gasket_dev*, align 8
  %13 = alloca %struct.gasket_sysfs_attribute*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 48
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 120
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %16, %4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %103

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @kstrtoul(i8* %34, i32 16, i32* %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %103

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %44)
  store %struct.gasket_sysfs_mapping* %45, %struct.gasket_sysfs_mapping** %11, align 8
  %46 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %11, align 8
  %47 = icmp ne %struct.gasket_sysfs_mapping* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %103

51:                                               ; preds = %43
  %52 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %11, align 8
  %53 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %52, i32 0, i32 0
  %54 = load %struct.gasket_dev*, %struct.gasket_dev** %53, align 8
  store %struct.gasket_dev* %54, %struct.gasket_dev** %12, align 8
  %55 = load %struct.gasket_dev*, %struct.gasket_dev** %12, align 8
  %56 = icmp ne %struct.gasket_dev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %103

60:                                               ; preds = %51
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %63 = call %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device* %61, %struct.device_attribute* %62)
  store %struct.gasket_sysfs_attribute* %63, %struct.gasket_sysfs_attribute** %13, align 8
  %64 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %65 = icmp ne %struct.gasket_sysfs_attribute* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %11, align 8
  %68 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %103

70:                                               ; preds = %60
  %71 = load %struct.gasket_dev*, %struct.gasket_dev** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %74 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %79 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gasket_dev_write_64(%struct.gasket_dev* %71, i32 %72, i32 %77, i32 %82)
  %84 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %85 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %84, i32 0, i32 0
  %86 = load i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)*, i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %70
  %89 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %90 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %89, i32 0, i32 0
  %91 = load i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)*, i32 (%struct.gasket_dev*, %struct.gasket_sysfs_attribute*, i32)** %90, align 8
  %92 = load %struct.gasket_dev*, %struct.gasket_dev** %12, align 8
  %93 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 %91(%struct.gasket_dev* %92, %struct.gasket_sysfs_attribute* %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %70
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %13, align 8
  %99 = call i32 @gasket_sysfs_put_attr(%struct.device* %97, %struct.gasket_sysfs_attribute* %98)
  %100 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %11, align 8
  %101 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %100)
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %96, %66, %57, %48, %37, %28
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @kstrtoul(i8*, i32, i32*) #1

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @put_mapping(%struct.gasket_sysfs_mapping*) #1

declare dso_local i32 @gasket_dev_write_64(%struct.gasket_dev*, i32, i32, i32) #1

declare dso_local i32 @gasket_sysfs_put_attr(%struct.device*, %struct.gasket_sysfs_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
