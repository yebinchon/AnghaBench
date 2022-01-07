; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"espdma\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_CSR = common dso_local global i32 0, align 4
@DMA_DEVICE_ID = common dso_local global i32 0, align 4
@dvmarev0 = common dso_local global i32 0, align 4
@dvmaesc1 = common dso_local global i32 0, align 4
@dvmarev1 = common dso_local global i32 0, align 4
@dvmarev2 = common dso_local global i32 0, align 4
@dvmahme = common dso_local global i32 0, align 4
@dvmarevplus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, %struct.platform_device*)* @esp_sbus_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_setup_dma(%struct.esp* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.esp* %0, %struct.esp** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %7 = load %struct.esp*, %struct.esp** %4, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 2
  store %struct.platform_device* %6, %struct.platform_device** %8, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @resource_size(i32* %16)
  %18 = call i32 @of_ioremap(i32* %12, i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.esp*, %struct.esp** %4, align 8
  %20 = getelementptr inbounds %struct.esp, %struct.esp* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.esp*, %struct.esp** %4, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load i32, i32* @DMA_CSR, align 4
  %30 = call i32 @dma_read32(i32 %29)
  %31 = load i32, i32* @DMA_DEVICE_ID, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %57 [
    i32 131, label %33
    i32 133, label %37
    i32 130, label %41
    i32 129, label %45
    i32 132, label %49
    i32 128, label %53
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* @dvmarev0, align 4
  %35 = load %struct.esp*, %struct.esp** %4, align 8
  %36 = getelementptr inbounds %struct.esp, %struct.esp* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %57

37:                                               ; preds = %28
  %38 = load i32, i32* @dvmaesc1, align 4
  %39 = load %struct.esp*, %struct.esp** %4, align 8
  %40 = getelementptr inbounds %struct.esp, %struct.esp* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %57

41:                                               ; preds = %28
  %42 = load i32, i32* @dvmarev1, align 4
  %43 = load %struct.esp*, %struct.esp** %4, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %28
  %46 = load i32, i32* @dvmarev2, align 4
  %47 = load %struct.esp*, %struct.esp** %4, align 8
  %48 = getelementptr inbounds %struct.esp, %struct.esp* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %57

49:                                               ; preds = %28
  %50 = load i32, i32* @dvmahme, align 4
  %51 = load %struct.esp*, %struct.esp** %4, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %28
  %54 = load i32, i32* @dvmarevplus, align 4
  %55 = load %struct.esp*, %struct.esp** %4, align 8
  %56 = getelementptr inbounds %struct.esp, %struct.esp* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %28, %53, %49, %45, %41, %37, %33
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @dma_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
