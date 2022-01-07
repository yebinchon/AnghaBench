; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_wait_tx_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_wait_tx_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_spi = type { i32 }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_spi*)* @bcm2835_wait_tx_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_wait_tx_fifo_empty(%struct.bcm2835_spi* %0) #0 {
  %2 = alloca %struct.bcm2835_spi*, align 8
  store %struct.bcm2835_spi* %0, %struct.bcm2835_spi** %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %2, align 8
  %5 = load i32, i32* @BCM2835_SPI_CS, align 4
  %6 = call i32 @bcm2835_rd(%struct.bcm2835_spi* %4, i32 %5)
  %7 = load i32, i32* @BCM2835_SPI_CS_DONE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 (...) @cpu_relax()
  br label %3

13:                                               ; preds = %3
  ret void
}

declare dso_local i32 @bcm2835_rd(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
