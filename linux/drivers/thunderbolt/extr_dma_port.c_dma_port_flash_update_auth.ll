; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_update_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_flash_update_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i32 }

@MAIL_IN_CMD_FLASH_UPDATE_AUTH = common dso_local global i32 0, align 4
@MAIL_IN_CMD_SHIFT = common dso_local global i32 0, align 4
@MAIL_IN_OP_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_port_flash_update_auth(%struct.tb_dma_port* %0) #0 {
  %2 = alloca %struct.tb_dma_port*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_dma_port* %0, %struct.tb_dma_port** %2, align 8
  %4 = load i32, i32* @MAIL_IN_CMD_FLASH_UPDATE_AUTH, align 4
  %5 = load i32, i32* @MAIL_IN_CMD_SHIFT, align 4
  %6 = shl i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MAIL_IN_OP_REQUEST, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tb_dma_port*, %struct.tb_dma_port** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dma_port_request(%struct.tb_dma_port* %10, i32 %11, i32 150)
  ret i32 %12
}

declare dso_local i32 @dma_port_request(%struct.tb_dma_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
