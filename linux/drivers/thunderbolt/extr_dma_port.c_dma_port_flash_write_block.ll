; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i64, i32, %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAIL_DATA = common dso_local global i64 0, align 8
@DMA_PORT_TIMEOUT = common dso_local global i32 0, align 4
@MAIL_IN_CMD_FLASH_WRITE = common dso_local global i32 0, align 4
@MAIL_IN_CMD_SHIFT = common dso_local global i32 0, align 4
@DMA_PORT_CSS_ADDRESS = common dso_local global i32 0, align 4
@MAIL_IN_CSS = common dso_local global i32 0, align 4
@MAIL_IN_DWORDS_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_DWORDS_MASK = common dso_local global i32 0, align 4
@MAIL_IN_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_ADDRESS_MASK = common dso_local global i32 0, align 4
@MAIL_IN_OP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_dma_port*, i32, i8*, i32)* @dma_port_flash_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_port_flash_write_block(%struct.tb_dma_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tb_dma_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_switch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %15 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %14, i32 0, i32 2
  %16 = load %struct.tb_switch*, %struct.tb_switch** %15, align 8
  store %struct.tb_switch* %16, %struct.tb_switch** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %26 = call i32 @tb_route(%struct.tb_switch* %25)
  %27 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %28 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %31 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAIL_DATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %37 = call i32 @dma_port_write(i32 %23, i8* %24, i32 %26, i32 %29, i64 %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @MAIL_IN_CMD_FLASH_WRITE, align 4
  %39 = load i32, i32* @MAIL_IN_CMD_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DMA_PORT_CSS_ADDRESS, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* @DMA_PORT_CSS_ADDRESS, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @MAIL_IN_CSS, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @MAIL_IN_DWORDS_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @MAIL_IN_DWORDS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @MAIL_IN_ADDRESS_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @MAIL_IN_ADDRESS_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @MAIL_IN_OP_REQUEST, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.tb_dma_port*, %struct.tb_dma_port** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %74 = call i32 @dma_port_request(%struct.tb_dma_port* %71, i32 %72, i32 %73)
  ret i32 %74
}

declare dso_local i32 @dma_port_write(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @dma_port_request(%struct.tb_dma_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
