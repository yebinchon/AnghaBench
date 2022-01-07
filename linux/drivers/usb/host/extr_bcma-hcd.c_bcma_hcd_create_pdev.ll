; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_create_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_create_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.bcma_device = type { i32, i64 }
%struct.resource = type { i32, i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.bcma_device*, i8*, i64, i8*, i64)* @bcma_hcd_create_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @bcma_hcd_create_pdev(%struct.bcma_device* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.platform_device*, align 8
  %13 = alloca [2 x %struct.resource], align 16
  %14 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %16 = call i32 @memset(%struct.resource* %15, i32 0, i32 48)
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 4096
  %24 = sub nsw i64 %23, 1
  %25 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 16
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 16
  %30 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %31 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 1
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @IORESOURCE_IRQ, align 4
  %36 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 1
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call %struct.platform_device* @platform_device_alloc(i8* %38, i32 0)
  store %struct.platform_device* %39, %struct.platform_device** %12, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %41 = icmp ne %struct.platform_device* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.platform_device* @ERR_PTR(i32 %44)
  store %struct.platform_device* %45, %struct.platform_device** %6, align 8
  br label %91

46:                                               ; preds = %5
  %47 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %48 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %47, i32 0, i32 0
  %49 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* %54, i32** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %59 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %60 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %13, i64 0, i64 0
  %61 = call i32 @ARRAY_SIZE(%struct.resource* %60)
  %62 = call i32 @platform_device_add_resources(%struct.platform_device* %58, %struct.resource* %59, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  br label %86

66:                                               ; preds = %46
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @platform_device_add_data(%struct.platform_device* %70, i8* %71, i64 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %86

78:                                               ; preds = %74
  %79 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %80 = call i32 @platform_device_add(%struct.platform_device* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %85, %struct.platform_device** %6, align 8
  br label %91

86:                                               ; preds = %83, %77, %65
  %87 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %88 = call i32 @platform_device_put(%struct.platform_device* %87)
  %89 = load i32, i32* %14, align 4
  %90 = call %struct.platform_device* @ERR_PTR(i32 %89)
  store %struct.platform_device* %90, %struct.platform_device** %6, align 8
  br label %91

91:                                               ; preds = %86, %84, %42
  %92 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  ret %struct.platform_device* %92
}

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i64) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
