; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_rproc = type { i32 }
%struct.rproc = type { i32, %struct.stm32_rproc* }

@st_rproc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_rproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm32_rproc*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rproc*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @DMA_BIT_MASK(i32 32)
  %16 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.rproc* @rproc_alloc(%struct.device* %22, i32 %25, i32* @st_rproc_ops, i32* null, i32 4)
  store %struct.rproc* %26, %struct.rproc** %7, align 8
  %27 = load %struct.rproc*, %struct.rproc** %7, align 8
  %28 = icmp ne %struct.rproc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %21
  %33 = load %struct.rproc*, %struct.rproc** %7, align 8
  %34 = getelementptr inbounds %struct.rproc, %struct.rproc* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.rproc*, %struct.rproc** %7, align 8
  %36 = getelementptr inbounds %struct.rproc, %struct.rproc* %35, i32 0, i32 1
  %37 = load %struct.stm32_rproc*, %struct.stm32_rproc** %36, align 8
  store %struct.stm32_rproc* %37, %struct.stm32_rproc** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.rproc*, %struct.rproc** %7, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.rproc* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @stm32_rproc_parse_dt(%struct.platform_device* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %58

46:                                               ; preds = %32
  %47 = load %struct.rproc*, %struct.rproc** %7, align 8
  %48 = call i32 @stm32_rproc_request_mbox(%struct.rproc* %47)
  %49 = load %struct.rproc*, %struct.rproc** %7, align 8
  %50 = call i32 @rproc_add(%struct.rproc* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %62

55:                                               ; preds = %53
  %56 = load %struct.rproc*, %struct.rproc** %7, align 8
  %57 = call i32 @stm32_rproc_free_mbox(%struct.rproc* %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.rproc*, %struct.rproc** %7, align 8
  %60 = call i32 @rproc_free(%struct.rproc* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %54, %29, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.device*, i32, i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rproc*) #1

declare dso_local i32 @stm32_rproc_parse_dt(%struct.platform_device*) #1

declare dso_local i32 @stm32_rproc_request_mbox(%struct.rproc*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @stm32_rproc_free_mbox(%struct.rproc*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
