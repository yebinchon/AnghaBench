; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_cdev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_cdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3403_priv = type { %struct.TYPE_6__*, %struct.int3403_cdev*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.int3403_cdev = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PPSS\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid PPSS data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@int3403_cooling_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int3403_priv*)* @int3403_cdev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3403_cdev_add(%struct.int3403_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.int3403_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.int3403_cdev*, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  store %struct.int3403_priv* %0, %struct.int3403_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %16 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.int3403_cdev* @devm_kzalloc(i32* %18, i32 16, i32 %19)
  store %struct.int3403_cdev* %20, %struct.int3403_cdev** %6, align 8
  %21 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %22 = icmp ne %struct.int3403_cdev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %91

26:                                               ; preds = %1
  %27 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %28 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @acpi_evaluate_object(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %7)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %41 = load %union.acpi_object*, %union.acpi_object** %40, align 8
  store %union.acpi_object* %41, %union.acpi_object** %8, align 8
  %42 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %43 = icmp ne %union.acpi_object* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %46 = bitcast %union.acpi_object* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44, %39
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  %54 = call i32 @kfree(%union.acpi_object* %53)
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %91

57:                                               ; preds = %44
  %58 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %59 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %60 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %59, i32 0, i32 1
  store %struct.int3403_cdev* %58, %struct.int3403_cdev** %60, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %67 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %69 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @acpi_device_bid(%struct.TYPE_6__* %70)
  %72 = load %struct.int3403_priv*, %struct.int3403_priv** %3, align 8
  %73 = call i32 @thermal_cooling_device_register(i32 %71, %struct.int3403_priv* %72, i32* @int3403_cooling_ops)
  %74 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %75 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %77 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %57
  %82 = load %struct.int3403_cdev*, %struct.int3403_cdev** %6, align 8
  %83 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %57
  %87 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %88 = load %union.acpi_object*, %union.acpi_object** %87, align 8
  %89 = call i32 @kfree(%union.acpi_object* %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %50, %36, %23
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.int3403_cdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @thermal_cooling_device_register(i32, %struct.int3403_priv*, i32*) #1

declare dso_local i32 @acpi_device_bid(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
