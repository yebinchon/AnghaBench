; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_get_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_get_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i8*, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vfio-reset:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*)* @vfio_platform_get_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_get_reset(%struct.vfio_platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_platform_device*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  %4 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %5 = call i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %9 = call i64 @vfio_platform_acpi_has_reset(%struct.vfio_platform_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 0, %11 ], [ %14, %12 ]
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %21, i32 0, i32 1
  %23 = call i8* @vfio_platform_lookup_reset(i32 %20, i32* %22)
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %17
  %31 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @request_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %38, i32 0, i32 1
  %40 = call i8* @vfio_platform_lookup_reset(i32 %37, i32* %39)
  %41 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %30, %17
  %44 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device*) #1

declare dso_local i64 @vfio_platform_acpi_has_reset(%struct.vfio_platform_device*) #1

declare dso_local i8* @vfio_platform_lookup_reset(i32, i32*) #1

declare dso_local i32 @request_module(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
