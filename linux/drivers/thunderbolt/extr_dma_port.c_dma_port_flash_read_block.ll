; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i64, i32, %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAIL_IN_CMD_FLASH_READ = common dso_local global i32 0, align 4
@MAIL_IN_CMD_SHIFT = common dso_local global i32 0, align 4
@MAIL_DATA_DWORDS = common dso_local global i32 0, align 4
@MAIL_IN_DWORDS_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_DWORDS_MASK = common dso_local global i32 0, align 4
@MAIL_IN_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_ADDRESS_MASK = common dso_local global i32 0, align 4
@MAIL_IN_OP_REQUEST = common dso_local global i32 0, align 4
@DMA_PORT_TIMEOUT = common dso_local global i32 0, align 4
@MAIL_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_dma_port*, i32, i8*, i32)* @dma_port_flash_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_port_flash_read_block(%struct.tb_dma_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_dma_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.tb_dma_port*, %struct.tb_dma_port** %6, align 8
  %16 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %15, i32 0, i32 2
  %17 = load %struct.tb_switch*, %struct.tb_switch** %16, align 8
  store %struct.tb_switch* %17, %struct.tb_switch** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @MAIL_IN_CMD_FLASH_READ, align 4
  %23 = load i32, i32* @MAIL_IN_CMD_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @MAIL_DATA_DWORDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @MAIL_IN_DWORDS_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @MAIL_IN_DWORDS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %28, %4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MAIL_IN_ADDRESS_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @MAIL_IN_ADDRESS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @MAIL_IN_OP_REQUEST, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.tb_dma_port*, %struct.tb_dma_port** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %50 = call i32 @dma_port_request(%struct.tb_dma_port* %47, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %75

55:                                               ; preds = %36
  %56 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %57 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %63 = call i32 @tb_route(%struct.tb_switch* %62)
  %64 = load %struct.tb_dma_port*, %struct.tb_dma_port** %6, align 8
  %65 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tb_dma_port*, %struct.tb_dma_port** %6, align 8
  %68 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MAIL_DATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %74 = call i32 @dma_port_read(i32 %60, i8* %61, i32 %63, i32 %66, i64 %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %55, %53
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @dma_port_request(%struct.tb_dma_port*, i32, i32) #1

declare dso_local i32 @dma_port_read(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
