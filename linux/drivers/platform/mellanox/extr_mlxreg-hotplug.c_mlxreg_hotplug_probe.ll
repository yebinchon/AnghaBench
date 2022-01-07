; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlxreg_core_hotplug_platform_data = type { i64, i32, i32 }
%struct.mlxreg_hotplug_priv_data = type { i64, i32, i32, i32, i32, i32, %struct.platform_device*, i32, i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxreg_hotplug_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mlxreg-hotplug\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@mlxreg_hotplug_work_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocate attributes: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"mlxreg_hotplug\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to register hwmon device %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxreg_hotplug_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_hotplug_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxreg_core_hotplug_platform_data*, align 8
  %5 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(%struct.TYPE_7__* %9)
  store %struct.mlxreg_core_hotplug_platform_data* %10, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %11 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %12 = icmp ne %struct.mlxreg_core_hotplug_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %161

19:                                               ; preds = %1
  %20 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %22)
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %6, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = icmp ne %struct.i2c_adapter* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %161

29:                                               ; preds = %19
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mlxreg_hotplug_priv_data* @devm_kzalloc(%struct.TYPE_7__* %33, i32 48, i32 %34)
  store %struct.mlxreg_hotplug_priv_data* %35, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %36 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %37 = icmp ne %struct.mlxreg_hotplug_priv_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %161

41:                                               ; preds = %29
  %42 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %51 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i64 @platform_get_irq(%struct.platform_device* %53, i32 0)
  %55 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %56 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %58 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %63 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %161

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %72 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %78 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %81 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %80, i32 0, i32 6
  store %struct.platform_device* %79, %struct.platform_device** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %85 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @mlxreg_hotplug_irq_handler, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %90 = load i32, i32* @IRQF_SHARED, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %93 = call i32 @devm_request_irq(%struct.TYPE_7__* %83, i32 %87, i32 %88, i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.mlxreg_hotplug_priv_data* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %67
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %161

102:                                              ; preds = %67
  %103 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %104 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @disable_irq(i32 %106)
  %108 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %109 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %108, i32 0, i32 5
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %112 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %111, i32 0, i32 4
  %113 = load i32, i32* @mlxreg_hotplug_work_handler, align 4
  %114 = call i32 @INIT_DELAYED_WORK(i32* %112, i32 %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %118 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %116, %struct.mlxreg_hotplug_priv_data* %117)
  %119 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %120 = call i32 @mlxreg_hotplug_attr_init(%struct.mlxreg_hotplug_priv_data* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %102
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %161

129:                                              ; preds = %102
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %133 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %134 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @devm_hwmon_device_register_with_groups(%struct.TYPE_7__* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.mlxreg_hotplug_priv_data* %132, i32 %135)
  %137 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %138 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %140 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %129
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %148 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @PTR_ERR(i32 %149)
  %151 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %153 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @PTR_ERR(i32 %154)
  store i32 %155, i32* %2, align 4
  br label %161

156:                                              ; preds = %129
  %157 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %158 = call i32 @mlxreg_hotplug_set_irq(%struct.mlxreg_hotplug_priv_data* %157)
  %159 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %5, align 8
  %160 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %159, i32 0, i32 1
  store i32 1, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %156, %144, %123, %96, %61, %38, %26, %13
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local %struct.mlxreg_hotplug_priv_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i8*, %struct.mlxreg_hotplug_priv_data*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.mlxreg_hotplug_priv_data*) #1

declare dso_local i32 @mlxreg_hotplug_attr_init(%struct.mlxreg_hotplug_priv_data*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(%struct.TYPE_7__*, i8*, %struct.mlxreg_hotplug_priv_data*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxreg_hotplug_set_irq(%struct.mlxreg_hotplug_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
