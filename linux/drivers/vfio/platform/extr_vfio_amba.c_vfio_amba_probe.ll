; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_vfio_amba_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_vfio_amba_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32, i32 }
%struct.amba_id = type { i32 }
%struct.vfio_platform_device = type { i32, %struct.vfio_platform_device*, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vfio-amba-%08x\00", align 1
@VFIO_DEVICE_FLAGS_AMBA = common dso_local global i32 0, align 4
@get_amba_resource = common dso_local global i32 0, align 4
@get_amba_irq = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @vfio_amba_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_amba_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.vfio_platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vfio_platform_device* @kzalloc(i32 40, i32 %8)
  store %struct.vfio_platform_device* %9, %struct.vfio_platform_device** %6, align 8
  %10 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %11 = icmp ne %struct.vfio_platform_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %18 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vfio_platform_device* @kasprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %21, i32 0, i32 1
  store %struct.vfio_platform_device* %20, %struct.vfio_platform_device** %22, align 8
  %23 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %24 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %23, i32 0, i32 1
  %25 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %24, align 8
  %26 = icmp ne %struct.vfio_platform_device* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %15
  %28 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %29 = call i32 @kfree(%struct.vfio_platform_device* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %15
  %33 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %34 = bitcast %struct.amba_device* %33 to i8*
  %35 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %36 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @VFIO_DEVICE_FLAGS_AMBA, align 4
  %38 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %39 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @get_amba_resource, align 4
  %41 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %42 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @get_amba_irq, align 4
  %44 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %45 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %48 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %50 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %52 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %53 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %52, i32 0, i32 0
  %54 = call i32 @vfio_platform_probe_common(%struct.vfio_platform_device* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %32
  %58 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %59 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %58, i32 0, i32 1
  %60 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %59, align 8
  %61 = call i32 @kfree(%struct.vfio_platform_device* %60)
  %62 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %63 = call i32 @kfree(%struct.vfio_platform_device* %62)
  br label %64

64:                                               ; preds = %57, %32
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %27, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.vfio_platform_device* @kzalloc(i32, i32) #1

declare dso_local %struct.vfio_platform_device* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.vfio_platform_device*) #1

declare dso_local i32 @vfio_platform_probe_common(%struct.vfio_platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
