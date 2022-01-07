; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_call_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_call_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32 (%struct.vfio_platform_device*)*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no reset function found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, i8**)* @vfio_platform_call_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_call_reset(%struct.vfio_platform_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca i8**, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %7 = call i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_info(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @vfio_platform_acpi_call_reset(%struct.vfio_platform_device* %14, i8** %15)
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %18, i32 0, i32 0
  %20 = load i32 (%struct.vfio_platform_device*)*, i32 (%struct.vfio_platform_device*)** %19, align 8
  %21 = icmp ne i32 (%struct.vfio_platform_device*)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %27, i32 0, i32 0
  %29 = load i32 (%struct.vfio_platform_device*)*, i32 (%struct.vfio_platform_device*)** %28, align 8
  %30 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %31 = call i32 %29(%struct.vfio_platform_device* %30)
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %22, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @vfio_platform_acpi_call_reset(%struct.vfio_platform_device*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
