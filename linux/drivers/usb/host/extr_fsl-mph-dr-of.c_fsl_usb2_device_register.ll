; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_fsl_usb2_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_fsl_usb2_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__, %struct.resource* }
%struct.TYPE_2__ = type { i32, i32*, %struct.TYPE_2__* }
%struct.resource = type { i32 }
%struct.fsl_usb2_platform_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.platform_device*, %struct.fsl_usb2_platform_data*, i8*, i32)* @fsl_usb2_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @fsl_usb2_device_register(%struct.platform_device* %0, %struct.fsl_usb2_platform_data* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.fsl_usb2_platform_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.fsl_usb2_platform_data* %1, %struct.fsl_usb2_platform_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  %16 = load %struct.resource*, %struct.resource** %15, align 8
  store %struct.resource* %16, %struct.resource** %11, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.platform_device* @platform_device_alloc(i8* %20, i32 %21)
  store %struct.platform_device* %22, %struct.platform_device** %10, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %24 = icmp ne %struct.platform_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %85

28:                                               ; preds = %4
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %28
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* %49, i32** %52, align 8
  br label %58

53:                                               ; preds = %28
  %54 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = call i32 @DMA_BIT_MASK(i32 32)
  %57 = call i32 @dma_set_mask(%struct.TYPE_2__* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %60 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %61 = call i32 @platform_device_add_data(%struct.platform_device* %59, %struct.fsl_usb2_platform_data* %60, i32 4)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %85

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %70 = load %struct.resource*, %struct.resource** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @platform_device_add_resources(%struct.platform_device* %69, %struct.resource* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %85

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %79 = call i32 @platform_device_add(%struct.platform_device* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %85

83:                                               ; preds = %77
  %84 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %84, %struct.platform_device** %5, align 8
  br label %90

85:                                               ; preds = %82, %75, %64, %25
  %86 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %87 = call i32 @platform_device_put(%struct.platform_device* %86)
  %88 = load i32, i32* %13, align 4
  %89 = call %struct.platform_device* @ERR_PTR(i32 %88)
  store %struct.platform_device* %89, %struct.platform_device** %5, align 8
  br label %90

90:                                               ; preds = %85, %83
  %91 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  ret %struct.platform_device* %91
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.fsl_usb2_platform_data*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
