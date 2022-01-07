; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32, i32 }
%struct.device = type { i32 }
%struct.acpi_device = type { i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ACPI companion device not found for %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, %struct.device*)* @vfio_platform_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_acpi_probe(%struct.vfio_platform_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load i64, i64* @acpi_disabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %6, align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %16 = icmp ne %struct.acpi_device* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %12
  %26 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %17, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
