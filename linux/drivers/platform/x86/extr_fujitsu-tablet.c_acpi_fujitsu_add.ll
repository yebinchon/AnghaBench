; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_acpi_fujitsu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_acpi_fujitsu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.acpi_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@fujitsu_walk_resources = common dso_local global i32 0, align 4
@fujitsu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Fujitsu %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACPI_FUJITSU_CLASS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@MODULENAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@fujitsu_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fujitsu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @METHOD_NAME__CRS, align 4
  %16 = load i32, i32* @fujitsu_walk_resources, align 4
  %17 = call i32 @acpi_walk_resources(i32 %14, i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 2), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 1), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %11
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %24
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = call i32 @acpi_device_name(%struct.acpi_device* %31)
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = call i8* @acpi_device_hid(%struct.acpi_device* %33)
  %35 = call i32 @sprintf(i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = call i32 @acpi_device_class(%struct.acpi_device* %36)
  %38 = load i8*, i8** @ACPI_FUJITSU_CLASS, align 8
  %39 = call i32 @sprintf(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 3), align 4
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = call i8* @acpi_device_hid(%struct.acpi_device* %41)
  %43 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %47 = call i32 @acpi_device_name(%struct.acpi_device* %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 3), align 4
  %49 = call i32 @input_fujitsu_setup(i32* %45, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %81

54:                                               ; preds = %30
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 0), align 4
  %57 = load i32, i32* @MODULENAME, align 4
  %58 = call i32 @request_region(i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 (...) @input_fujitsu_remove()
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %81

64:                                               ; preds = %54
  %65 = call i32 (...) @fujitsu_reset()
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 2), align 4
  %67 = load i32, i32* @fujitsu_interrupt, align 4
  %68 = load i32, i32* @IRQF_SHARED, align 4
  %69 = load i32, i32* @MODULENAME, align 4
  %70 = load i32, i32* @fujitsu_interrupt, align 4
  %71 = call i32 @request_irq(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 1), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fujitsu, i32 0, i32 0), align 4
  %77 = call i32 @release_region(i32 %75, i32 %76)
  %78 = call i32 (...) @input_fujitsu_remove()
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %74, %60, %52, %27, %8
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_fujitsu_setup(i32*, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @input_fujitsu_remove(...) #1

declare dso_local i32 @fujitsu_reset(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
