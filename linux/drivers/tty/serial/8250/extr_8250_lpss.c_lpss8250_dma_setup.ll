; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_lpss8250_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_lpss8250_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpss8250 = type { i32, %struct.dw_dma_slave, %struct.TYPE_5__ }
%struct.dw_dma_slave = type { i32 }
%struct.TYPE_5__ = type { %struct.uart_8250_dma }
%struct.uart_8250_dma = type { %struct.dw_dma_slave*, %struct.dw_dma_slave*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uart_8250_port = type { %struct.uart_8250_dma*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpss8250_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpss8250*, %struct.uart_8250_port*)* @lpss8250_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpss8250_dma_setup(%struct.lpss8250* %0, %struct.uart_8250_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpss8250*, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.uart_8250_dma*, align 8
  %7 = alloca %struct.dw_dma_slave*, align 8
  %8 = alloca %struct.dw_dma_slave*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.lpss8250* %0, %struct.lpss8250** %4, align 8
  store %struct.uart_8250_port* %1, %struct.uart_8250_port** %5, align 8
  %10 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %11 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.uart_8250_dma* %12, %struct.uart_8250_dma** %6, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %18 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.dw_dma_slave* @devm_kzalloc(%struct.device* %24, i32 4, i32 %25)
  store %struct.dw_dma_slave* %26, %struct.dw_dma_slave** %7, align 8
  %27 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %28 = icmp ne %struct.dw_dma_slave* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.dw_dma_slave* @devm_kzalloc(%struct.device* %33, i32 4, i32 %34)
  store %struct.dw_dma_slave* %35, %struct.dw_dma_slave** %8, align 8
  %36 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %8, align 8
  %37 = icmp ne %struct.dw_dma_slave* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %32
  %42 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %43 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %44 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %43, i32 0, i32 1
  %45 = bitcast %struct.dw_dma_slave* %42 to i8*
  %46 = bitcast %struct.dw_dma_slave* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %48 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %51 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %8, align 8
  %54 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %55 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %54, i32 0, i32 1
  %56 = bitcast %struct.dw_dma_slave* %53 to i8*
  %57 = bitcast %struct.dw_dma_slave* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.lpss8250*, %struct.lpss8250** %4, align 8
  %59 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %62 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @lpss8250_dma_filter, align 4
  %65 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %66 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %68 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %69 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %68, i32 0, i32 1
  store %struct.dw_dma_slave* %67, %struct.dw_dma_slave** %69, align 8
  %70 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %8, align 8
  %71 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %72 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %71, i32 0, i32 0
  store %struct.dw_dma_slave* %70, %struct.dw_dma_slave** %72, align 8
  %73 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 0
  store %struct.uart_8250_dma* %73, %struct.uart_8250_dma** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %41, %38, %29, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.dw_dma_slave* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
