; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_soc-imx-scu.c_imx_scu_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_soc-imx-scu.c_imx_scu_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.soc_device_attribute = type { i8*, i8*, i8*, i32 }
%struct.soc_device = type { i32 }

@soc_ipc_handle = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Freescale i.MX\00", align 1
@of_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@dev_attr_soc_uid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_scu_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_soc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.soc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = call i32 @imx_scu_get_handle(i32* @soc_ipc_handle)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.soc_device_attribute* @devm_kzalloc(i32* %16, i32 32, i32 %17)
  store %struct.soc_device_attribute* %18, %struct.soc_device_attribute** %4, align 8
  %19 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %20 = icmp ne %struct.soc_device_attribute* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %14
  %25 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %26 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @of_root, align 4
  %28 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %29 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %28, i32 0, i32 3
  %30 = call i32 @of_property_read_string(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %112

35:                                               ; preds = %24
  %36 = call i32 (...) @imx_scu_soc_id()
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %112

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 31
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %49 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %51 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %112

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 5
  %60 = and i32 %59, 15
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 2
  %63 = add nsw i32 %62, 1
  %64 = shl i32 %63, 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 3
  %67 = or i32 %64, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 15
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 15
  %74 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %76 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %78 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %57
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %106

84:                                               ; preds = %57
  %85 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %86 = call %struct.soc_device* @soc_device_register(%struct.soc_device_attribute* %85)
  store %struct.soc_device* %86, %struct.soc_device** %5, align 8
  %87 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %88 = call i64 @IS_ERR(%struct.soc_device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %92 = call i32 @PTR_ERR(%struct.soc_device* %91)
  store i32 %92, i32* %7, align 4
  br label %101

93:                                               ; preds = %84
  %94 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %95 = call i32 @soc_device_to_device(%struct.soc_device* %94)
  %96 = call i32 @device_create_file(i32 %95, i32* @dev_attr_soc_uid)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %112

101:                                              ; preds = %99, %90
  %102 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %103 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @kfree(i8* %104)
  br label %106

106:                                              ; preds = %101, %81
  %107 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %108 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %100, %54, %39, %33, %21, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @imx_scu_get_handle(i32*) #1

declare dso_local %struct.soc_device_attribute* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i32*) #1

declare dso_local i32 @imx_scu_soc_id(...) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, ...) #1

declare dso_local %struct.soc_device* @soc_device_register(%struct.soc_device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.soc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.soc_device*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @soc_device_to_device(%struct.soc_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
