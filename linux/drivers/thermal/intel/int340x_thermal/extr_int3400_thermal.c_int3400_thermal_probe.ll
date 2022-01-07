; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.int3400_thermal_priv = type { %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv*, i32, %struct.acpi_device*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"_ART table parsing error\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"_TRT table parsing error\0A\00", align 1
@int3400_thermal_get_mode = common dso_local global i32 0, align 4
@int3400_thermal_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@int3400_thermal_set_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"INT3400 Thermal\00", align 1
@int3400_thermal_params = common dso_local global i32 0, align 4
@uuid_attribute_group = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3400_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3400_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3400_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.int3400_thermal_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_6__* %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %4, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = icmp ne %struct.acpi_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %152

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.int3400_thermal_priv* @kzalloc(i32 48, i32 %16)
  store %struct.int3400_thermal_priv* %17, %struct.int3400_thermal_priv** %5, align 8
  %18 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %19 = icmp ne %struct.int3400_thermal_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %152

23:                                               ; preds = %15
  %24 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %25 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %26 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %25, i32 0, i32 3
  store %struct.acpi_device* %24, %struct.acpi_device** %26, align 8
  %27 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %28 = call i32 @int3400_thermal_get_uuids(%struct.int3400_thermal_priv* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %148

32:                                               ; preds = %23
  %33 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %34 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %33, i32 0, i32 3
  %35 = load %struct.acpi_device*, %struct.acpi_device** %34, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %39 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %38, i32 0, i32 6
  %40 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %41 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %40, i32 0, i32 0
  %42 = call i32 @acpi_parse_art(i32 %37, i32* %39, %struct.int3400_thermal_priv** %41, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %32
  %50 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %51 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %50, i32 0, i32 3
  %52 = load %struct.acpi_device*, %struct.acpi_device** %51, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %56 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %55, i32 0, i32 5
  %57 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %58 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %57, i32 0, i32 1
  %59 = call i32 @acpi_parse_trt(i32 %54, i32* %56, %struct.int3400_thermal_priv** %58, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_dbg(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %49
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.int3400_thermal_priv* %68)
  %70 = load i32, i32* @int3400_thermal_get_mode, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @int3400_thermal_ops, i32 0, i32 1), align 4
  %71 = load i32, i32* @int3400_thermal_set_mode, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @int3400_thermal_ops, i32 0, i32 0), align 4
  %72 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %73 = call i32 @thermal_zone_device_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, %struct.int3400_thermal_priv* %72, %struct.TYPE_5__* @int3400_thermal_ops, i32* @int3400_thermal_params, i32 0, i32 0)
  %74 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %75 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %77 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %83 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %6, align 4
  br label %139

86:                                               ; preds = %66
  %87 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %88 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %87, i32 0, i32 3
  %89 = load %struct.acpi_device*, %struct.acpi_device** %88, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @acpi_thermal_rel_misc_device_add(i32 %91)
  %93 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %94 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @sysfs_create_group(i32* %97, i32* @uuid_attribute_group)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %122

102:                                              ; preds = %86
  %103 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %104 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %103, i32 0, i32 3
  %105 = load %struct.acpi_device*, %struct.acpi_device** %104, align 8
  %106 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %109 = load i32, i32* @int3400_notify, align 4
  %110 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %111 = bitcast %struct.int3400_thermal_priv* %110 to i8*
  %112 = call i32 @acpi_install_notify_handler(i32 %107, i32 %108, i32 %109, i8* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %117

116:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %152

117:                                              ; preds = %115
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = call i32 @sysfs_remove_group(i32* %120, i32* @uuid_attribute_group)
  br label %122

122:                                              ; preds = %117, %101
  %123 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %124 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %129 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %128, i32 0, i32 3
  %130 = load %struct.acpi_device*, %struct.acpi_device** %129, align 8
  %131 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @acpi_thermal_rel_misc_device_remove(i32 %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %136 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @thermal_zone_device_unregister(i32 %137)
  br label %139

139:                                              ; preds = %134, %81
  %140 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %141 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %140, i32 0, i32 1
  %142 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %141, align 8
  %143 = call i32 @kfree(%struct.int3400_thermal_priv* %142)
  %144 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %145 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %144, i32 0, i32 0
  %146 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %145, align 8
  %147 = call i32 @kfree(%struct.int3400_thermal_priv* %146)
  br label %148

148:                                              ; preds = %139, %31
  %149 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %5, align 8
  %150 = call i32 @kfree(%struct.int3400_thermal_priv* %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %116, %20, %12
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_6__*) #1

declare dso_local %struct.int3400_thermal_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @int3400_thermal_get_uuids(%struct.int3400_thermal_priv*) #1

declare dso_local i32 @acpi_parse_art(i32, i32*, %struct.int3400_thermal_priv**, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @acpi_parse_trt(i32, i32*, %struct.int3400_thermal_priv**, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.int3400_thermal_priv*) #1

declare dso_local i32 @thermal_zone_device_register(i8*, i32, i32, %struct.int3400_thermal_priv*, %struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acpi_thermal_rel_misc_device_add(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @acpi_thermal_rel_misc_device_remove(i32) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.int3400_thermal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
