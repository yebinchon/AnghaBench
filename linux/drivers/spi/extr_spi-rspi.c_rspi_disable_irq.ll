; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32 }

@RSPI_SPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rspi_data*, i32)* @rspi_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rspi_disable_irq(%struct.rspi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rspi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %6 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %7 = load i32, i32* @RSPI_SPCR, align 4
  %8 = call i32 @rspi_read8(%struct.rspi_data* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @RSPI_SPCR, align 4
  %13 = call i32 @rspi_write8(%struct.rspi_data* %5, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

declare dso_local i32 @rspi_read8(%struct.rspi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
