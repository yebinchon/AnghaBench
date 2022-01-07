; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-memhotplug.c_xen_acpi_memory_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-memhotplug.c_xen_acpi_memory_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_memory_device* }
%struct.acpi_memory_device = type { %struct.acpi_device*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACPI_MEMORY_DEVICE_NAME = common dso_local global i8* null, align 8
@ACPI_MEMORY_DEVICE_CLASS = common dso_local global i8* null, align 8
@acpi_hotmem_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @xen_acpi_memory_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_acpi_memory_device_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_memory_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_memory_device* null, %struct.acpi_memory_device** %5, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acpi_memory_device* @kzalloc(i32 16, i32 %12)
  store %struct.acpi_memory_device* %13, %struct.acpi_memory_device** %5, align 8
  %14 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %15 = icmp ne %struct.acpi_memory_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %11
  %20 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_memory_device, %struct.acpi_memory_device* %20, i32 0, i32 1
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_memory_device, %struct.acpi_memory_device* %24, i32 0, i32 0
  store %struct.acpi_device* %23, %struct.acpi_device** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = call i32 @acpi_device_name(%struct.acpi_device* %26)
  %28 = load i8*, i8** @ACPI_MEMORY_DEVICE_NAME, align 8
  %29 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = call i32 @acpi_device_class(%struct.acpi_device* %30)
  %32 = load i8*, i8** @ACPI_MEMORY_DEVICE_CLASS, align 8
  %33 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  store %struct.acpi_memory_device* %34, %struct.acpi_memory_device** %36, align 8
  %37 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %38 = call i32 @acpi_memory_get_device_resources(%struct.acpi_memory_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %43 = call i32 @kfree(%struct.acpi_memory_device* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %19
  %46 = load i32, i32* @acpi_hotmem_initialized, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %58

49:                                               ; preds = %45
  %50 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %51 = call i32 @acpi_memory_check_device(%struct.acpi_memory_device* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load %struct.acpi_memory_device*, %struct.acpi_memory_device** %5, align 8
  %55 = call i32 @xen_acpi_memory_enable_device(%struct.acpi_memory_device* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %48, %41, %16, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.acpi_memory_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @acpi_memory_get_device_resources(%struct.acpi_memory_device*) #1

declare dso_local i32 @kfree(%struct.acpi_memory_device*) #1

declare dso_local i32 @acpi_memory_check_device(%struct.acpi_memory_device*) #1

declare dso_local i32 @xen_acpi_memory_enable_device(%struct.acpi_memory_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
