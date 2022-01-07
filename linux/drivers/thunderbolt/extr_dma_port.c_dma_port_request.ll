; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i64, i32, %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAIL_IN = common dso_local global i64 0, align 8
@DMA_PORT_TIMEOUT = common dso_local global i32 0, align 4
@MAIL_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_dma_port*, i32, i32)* @dma_port_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_port_request(%struct.tb_dma_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_dma_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %12 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %11, i32 0, i32 2
  %13 = load %struct.tb_switch*, %struct.tb_switch** %12, align 8
  store %struct.tb_switch* %13, %struct.tb_switch** %8, align 8
  %14 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %15 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %20 = call i32 @tb_route(%struct.tb_switch* %19)
  %21 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %22 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %25 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAIL_IN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %30 = call i32 @dma_port_write(i32 %18, i32* %6, i32 %20, i32 %23, i64 %28, i32 1, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %68

35:                                               ; preds = %3
  %36 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dma_port_wait_for_completion(%struct.tb_dma_port* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %45 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %50 = call i32 @tb_route(%struct.tb_switch* %49)
  %51 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %52 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %55 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAIL_OUT, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %60 = call i32 @dma_port_read(i32 %48, i32* %9, i32 %50, i32 %53, i64 %58, i32 1, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %43
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @status_to_errno(i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %63, %41, %33
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dma_port_write(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @dma_port_wait_for_completion(%struct.tb_dma_port*, i32) #1

declare dso_local i32 @dma_port_read(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
