; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi-bmof.c_wmi_bmof_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi-bmof.c_wmi_bmof_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.bmof_priv = type { %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read Binary MOF\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Binary MOF is not a buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bmof\00", align 1
@read_bmof = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*, i8*)* @wmi_bmof_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmi_bmof_probe(%struct.wmi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bmof_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %9 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bmof_priv* @devm_kzalloc(%struct.TYPE_14__* %9, i32 32, i32 %10)
  store %struct.bmof_priv* %11, %struct.bmof_priv** %6, align 8
  %12 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %13 = icmp ne %struct.bmof_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %19 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %18, i32 0, i32 0
  %20 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %21 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %19, %struct.bmof_priv* %20)
  %22 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %23 = call %struct.TYPE_12__* @wmidev_block_query(%struct.wmi_device* %22, i32 0)
  %24 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %25 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %27 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %32 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %17
  %37 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %38 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %46 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_14__* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %85

50:                                               ; preds = %36
  %51 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %52 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %51, i32 0, i32 1
  %53 = call i32 @sysfs_bin_attr_init(%struct.TYPE_13__* %52)
  %54 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %55 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %59 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 256, i32* %61, align 8
  %62 = load i32, i32* @read_bmof, align 4
  %63 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %64 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %67 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %73 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %76 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %79 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %78, i32 0, i32 1
  %80 = call i32 @sysfs_create_bin_file(i32* %77, %struct.TYPE_13__* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %50
  br label %85

84:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %91

85:                                               ; preds = %83, %44
  %86 = load %struct.bmof_priv*, %struct.bmof_priv** %6, align 8
  %87 = getelementptr inbounds %struct.bmof_priv, %struct.bmof_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @kfree(%struct.TYPE_12__* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %84, %30, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.bmof_priv* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.bmof_priv*) #1

declare dso_local %struct.TYPE_12__* @wmidev_block_query(%struct.wmi_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_13__*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
