; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_RAF_CTRL = common dso_local global i32 0, align 4
@BSPI_RAF_CTRL_CLEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*)* @bcm_qspi_bspi_lr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_bspi_lr_clear(%struct.bcm_qspi* %0) #0 {
  %2 = alloca %struct.bcm_qspi*, align 8
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %2, align 8
  %3 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %4 = load i32, i32* @BSPI, align 4
  %5 = load i32, i32* @BSPI_RAF_CTRL, align 4
  %6 = load i32, i32* @BSPI_RAF_CTRL_CLEAR_MASK, align 4
  %7 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %9 = call i32 @bcm_qspi_bspi_flush_prefetch_buffers(%struct.bcm_qspi* %8)
  ret void
}

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_flush_prefetch_buffers(%struct.bcm_qspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
