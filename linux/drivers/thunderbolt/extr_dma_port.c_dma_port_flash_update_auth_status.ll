; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_update_auth_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_update_auth_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i64, i32, %struct.tb_switch* }
%struct.tb_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAIL_OUT = common dso_local global i64 0, align 8
@DMA_PORT_TIMEOUT = common dso_local global i32 0, align 4
@MAIL_OUT_STATUS_CMD_MASK = common dso_local global i32 0, align 4
@MAIL_OUT_STATUS_CMD_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_CMD_FLASH_UPDATE_AUTH = common dso_local global i32 0, align 4
@MAIL_OUT_STATUS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_port_flash_update_auth_status(%struct.tb_dma_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_dma_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %11 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %10, i32 0, i32 2
  %12 = load %struct.tb_switch*, %struct.tb_switch** %11, align 8
  store %struct.tb_switch* %12, %struct.tb_switch** %6, align 8
  %13 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %19 = call i32 @tb_route(%struct.tb_switch* %18)
  %20 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %21 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %24 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAIL_OUT, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @DMA_PORT_TIMEOUT, align 4
  %29 = call i32 @dma_port_read(i32 %17, i32* %7, i32 %19, i32 %22, i64 %27, i32 1, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MAIL_OUT_STATUS_CMD_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MAIL_OUT_STATUS_CMD_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAIL_IN_CMD_FLASH_UPDATE_AUTH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAIL_OUT_STATUS_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  store i32 1, i32* %3, align 4
  br label %53

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %32
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @dma_port_read(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
