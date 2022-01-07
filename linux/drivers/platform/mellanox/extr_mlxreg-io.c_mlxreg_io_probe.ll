; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mlxreg_io_priv_data = type { i32, i32, %struct.platform_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate attributes: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mlxreg_io\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register hwmon device %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxreg_io_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_io_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxreg_io_priv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxreg_io_priv_data* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.mlxreg_io_priv_data* %9, %struct.mlxreg_io_priv_data** %4, align 8
  %10 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %11 = icmp ne %struct.mlxreg_io_priv_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_get_platdata(i32* %17)
  %19 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %20 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %22 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %15
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %34 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %33, i32 0, i32 2
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %36 = call i32 @mlxreg_io_attr_init(%struct.mlxreg_io_priv_data* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %41 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %40, i32 0, i32 2
  %42 = load %struct.platform_device*, %struct.platform_device** %41, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %31
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %51 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %52 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @devm_hwmon_device_register_with_groups(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.mlxreg_io_priv_data* %50, i32 %53)
  %55 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %56 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %58 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %47
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %66 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %71 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %47
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %4, align 8
  %78 = call i32 @dev_set_drvdata(i32* %76, %struct.mlxreg_io_priv_data* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %62, %39, %25, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mlxreg_io_priv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mlxreg_io_attr_init(%struct.mlxreg_io_priv_data*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(i32*, i8*, %struct.mlxreg_io_priv_data*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.mlxreg_io_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
