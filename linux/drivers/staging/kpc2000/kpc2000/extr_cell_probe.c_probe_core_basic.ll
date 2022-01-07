; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_probe_core_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_probe_core_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp2000_device = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.core_table_entry = type { i32, i32, i32 }
%struct.mfd_cell = type { i32, i8*, i32, i32, %struct.resource*, %struct.kpc_core_device_platdata* }
%struct.resource = type { i32, i32, i32 }
%struct.kpc_core_device_platdata = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [90 x i8] c"Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kp2000_device*, i8*, i64, i32)* @probe_core_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_core_basic(i32 %0, %struct.kp2000_device* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.core_table_entry, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kp2000_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mfd_cell, align 8
  %12 = alloca [2 x %struct.resource], align 16
  %13 = alloca %struct.kpc_core_device_platdata, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %3, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %4, i32* %17, align 4
  %18 = bitcast %struct.core_table_entry* %6 to i8*
  %19 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store i32 %0, i32* %8, align 4
  store %struct.kp2000_device* %1, %struct.kp2000_device** %9, align 8
  store i8* %2, i8** %10, align 8
  %20 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 1
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 4
  store %struct.resource* null, %struct.resource** %26, align 8
  %27 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 5
  store %struct.kpc_core_device_platdata* null, %struct.kpc_core_device_platdata** %27, align 8
  %28 = getelementptr inbounds %struct.kpc_core_device_platdata, %struct.kpc_core_device_platdata* %13, i32 0, i32 0
  %29 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %30 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.kpc_core_device_platdata, %struct.kpc_core_device_platdata* %13, i32 0, i32 1
  %33 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %34 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.kpc_core_device_platdata, %struct.kpc_core_device_platdata* %13, i32 0, i32 2
  %37 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %38 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.kpc_core_device_platdata, %struct.kpc_core_device_platdata* %13, i32 0, i32 3
  %41 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %42 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.kpc_core_device_platdata, %struct.kpc_core_device_platdata* %13, i32 0, i32 4
  %45 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %46 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %44, align 4
  %48 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %49 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = bitcast { i64, i32 }* %14 to i8*
  %55 = bitcast %struct.core_table_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @KPC_OLD_S2C_DMA_CH_NUM(i64 %57, i32 %59)
  %61 = bitcast { i64, i32 }* %15 to i8*
  %62 = bitcast %struct.core_table_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 12, i1 false)
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @KPC_OLD_C2S_DMA_CH_NUM(i64 %64, i32 %66)
  %68 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  %75 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %60, i32 %67, i32 %69, i32 %71, i32 %74)
  %76 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 5
  store %struct.kpc_core_device_platdata* %13, %struct.kpc_core_device_platdata** %76, align 8
  %77 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 2
  store i32 20, i32* %77, align 8
  %78 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 3
  store i32 2, i32* %78, align 4
  %79 = bitcast [2 x %struct.resource]* %12 to %struct.resource**
  %80 = call i32 @memset(%struct.resource** %79, i32 0, i32 24)
  %81 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 0
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 16
  %85 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = add nsw i32 %86, %89
  %91 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 0
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @IORESOURCE_MEM, align 4
  %94 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 0
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %97 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 1
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %104 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 1
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @IORESOURCE_IRQ, align 4
  %111 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 1
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %12, i64 0, i64 0
  %114 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %11, i32 0, i32 4
  store %struct.resource* %113, %struct.resource** %114, align 8
  %115 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %116 = call i32 @PCARD_TO_DEV(%struct.kp2000_device* %115)
  %117 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %118 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 100
  %121 = load %struct.kp2000_device*, %struct.kp2000_device** %9, align 8
  %122 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %121, i32 0, i32 1
  %123 = call i32 @mfd_add_devices(i32 %116, i32 %120, %struct.mfd_cell* %11, i32 1, i32* %122, i32 0, i32* null)
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @KPC_OLD_S2C_DMA_CH_NUM(i64, i32) #2

declare dso_local i32 @KPC_OLD_C2S_DMA_CH_NUM(i64, i32) #2

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
