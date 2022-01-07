; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid8250 = type { i32, %struct.TYPE_8__*, %struct.uart_8250_dma }
%struct.TYPE_8__ = type { i32 }
%struct.uart_8250_dma = type { %struct.hsu_dma_slave*, %struct.hsu_dma_slave*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.hsu_dma_slave = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.uart_8250_port = type { %struct.uart_8250_dma*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mid8250_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid8250*, %struct.uart_8250_port*)* @mid8250_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid8250_dma_setup(%struct.mid8250* %0, %struct.uart_8250_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mid8250*, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.uart_8250_dma*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hsu_dma_slave*, align 8
  %9 = alloca %struct.hsu_dma_slave*, align 8
  store %struct.mid8250* %0, %struct.mid8250** %4, align 8
  store %struct.uart_8250_port* %1, %struct.uart_8250_port** %5, align 8
  %10 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %11 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %10, i32 0, i32 2
  store %struct.uart_8250_dma* %11, %struct.uart_8250_dma** %6, align 8
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %17 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.hsu_dma_slave* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.hsu_dma_slave* %24, %struct.hsu_dma_slave** %8, align 8
  %25 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %8, align 8
  %26 = icmp ne %struct.hsu_dma_slave* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.hsu_dma_slave* @devm_kzalloc(%struct.device* %31, i32 16, i32 %32)
  store %struct.hsu_dma_slave* %33, %struct.hsu_dma_slave** %9, align 8
  %34 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %9, align 8
  %35 = icmp ne %struct.hsu_dma_slave* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %83

39:                                               ; preds = %30
  %40 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %41 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %43, 1
  %45 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %8, align 8
  %46 = getelementptr inbounds %struct.hsu_dma_slave, %struct.hsu_dma_slave* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %48 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  %51 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %9, align 8
  %52 = getelementptr inbounds %struct.hsu_dma_slave, %struct.hsu_dma_slave* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %54 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 64, i32* %55, align 8
  %56 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %57 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 64, i32* %58, align 4
  %59 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %60 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %8, align 8
  %64 = getelementptr inbounds %struct.hsu_dma_slave, %struct.hsu_dma_slave* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %66 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %9, align 8
  %70 = getelementptr inbounds %struct.hsu_dma_slave, %struct.hsu_dma_slave* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load i32, i32* @mid8250_dma_filter, align 4
  %72 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %73 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %8, align 8
  %75 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %76 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %75, i32 0, i32 1
  store %struct.hsu_dma_slave* %74, %struct.hsu_dma_slave** %76, align 8
  %77 = load %struct.hsu_dma_slave*, %struct.hsu_dma_slave** %9, align 8
  %78 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %79 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %78, i32 0, i32 0
  store %struct.hsu_dma_slave* %77, %struct.hsu_dma_slave** %79, align 8
  %80 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %6, align 8
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %81, i32 0, i32 0
  store %struct.uart_8250_dma* %80, %struct.uart_8250_dma** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %39, %36, %27, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.hsu_dma_slave* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
