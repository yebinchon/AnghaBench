; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_attach_spi_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_attach_spi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@SPI_TS_OBJ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"duplicate entry %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @s3_wmi_attach_spi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_wmi_attach_spi_device(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca %struct.acpi_device**, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @acpi_bus_get_device(i32 %12, %struct.acpi_device** %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %5, align 4
  br label %41

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.acpi_device**
  store %struct.acpi_device** %19, %struct.acpi_device*** %11, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %21 = call i32 @acpi_device_bid(%struct.acpi_device* %20)
  %22 = load i32, i32* @SPI_TS_OBJ_NAME, align 4
  %23 = load i32, i32* @SPI_TS_OBJ_NAME, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = call i64 @strncmp(i32 %21, i32 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %17
  %30 = load %struct.acpi_device**, %struct.acpi_device*** %11, align 8
  %31 = load %struct.acpi_device*, %struct.acpi_device** %30, align 8
  %32 = icmp ne %struct.acpi_device* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @SPI_TS_OBJ_NAME, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @AE_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %39 = load %struct.acpi_device**, %struct.acpi_device*** %11, align 8
  store %struct.acpi_device* %38, %struct.acpi_device** %39, align 8
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %33, %27, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
