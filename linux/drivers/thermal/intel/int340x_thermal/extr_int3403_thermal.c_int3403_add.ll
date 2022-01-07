; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.int3403_priv = type { i64, %struct.TYPE_2__*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PTYP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3403_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3403_add(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.int3403_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.int3403_priv* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.int3403_priv* %11, %struct.int3403_priv** %4, align 8
  %12 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %13 = icmp ne %struct.int3403_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %20 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %19, i32 0, i32 2
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.TYPE_2__* @ACPI_COMPANION(i32* %22)
  %24 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %25 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %24, i32 0, i32 1
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %27 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %17
  %34 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %35 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_evaluate_integer(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %45 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %50 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %49, i32 0, i32 0
  %51 = call i32 @acpi_evaluate_integer(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %84

58:                                               ; preds = %43
  br label %62

59:                                               ; preds = %33
  %60 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %61 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %60, i32 0, i32 0
  store i64 128, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.int3403_priv* %64)
  %66 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %67 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  switch i64 %68, label %75 [
    i64 128, label %69
    i64 129, label %72
    i64 130, label %72
  ]

69:                                               ; preds = %62
  %70 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %71 = call i32 @int3403_sensor_add(%struct.int3403_priv* %70)
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %62, %62
  %73 = load %struct.int3403_priv*, %struct.int3403_priv** %4, align 8
  %74 = call i32 @int3403_cdev_add(%struct.int3403_priv* %73)
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %72, %69
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %81, %55, %30
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %82, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.int3403_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.int3403_priv*) #1

declare dso_local i32 @int3403_sensor_add(%struct.int3403_priv*) #1

declare dso_local i32 @int3403_cdev_add(%struct.int3403_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
