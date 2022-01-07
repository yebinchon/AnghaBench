; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_create_dma_engine_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_create_dma_engine_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp2000_device = type { i32, i32 }
%struct.mfd_cell = type { i32, i32, %struct.resource*, i32, i64, i32* }
%struct.resource = type { i64, i32, i32 }

@KP_DRIVER_NAME_DMA_CONTROLLER = common dso_local global i32 0, align 4
@KPC_DMA_ENGINE_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kp2000_device*, i64, i32, i32)* @create_dma_engine_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dma_engine_core(%struct.kp2000_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kp2000_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfd_cell, align 8
  %10 = alloca [2 x %struct.resource], align 16
  store %struct.kp2000_device* %0, %struct.kp2000_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %struct.mfd_cell* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 5
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @KP_DRIVER_NAME_DMA_CONTROLLER, align 4
  %17 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = bitcast [2 x %struct.resource]* %10 to %struct.resource**
  %20 = call i32 @memset(%struct.resource** %19, i32 0, i32 32)
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 16
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @KPC_DMA_ENGINE_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = add i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 16
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IORESOURCE_IRQ, align 4
  %43 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %46 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i32 0, i32 2
  store %struct.resource* %45, %struct.resource** %46, align 8
  %47 = load %struct.kp2000_device*, %struct.kp2000_device** %5, align 8
  %48 = call i32 @PCARD_TO_DEV(%struct.kp2000_device* %47)
  %49 = load %struct.kp2000_device*, %struct.kp2000_device** %5, align 8
  %50 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 100
  %53 = load %struct.kp2000_device*, %struct.kp2000_device** %5, align 8
  %54 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %53, i32 0, i32 1
  %55 = call i32 @mfd_add_devices(i32 %48, i32 %52, %struct.mfd_cell* %9, i32 1, i32* %54, i32 0, i32* null)
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.resource**, i32, i32) #2

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #2

declare dso_local i32 @PCARD_TO_DEV(%struct.kp2000_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
