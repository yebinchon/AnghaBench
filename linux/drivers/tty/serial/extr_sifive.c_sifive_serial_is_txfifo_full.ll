; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c_sifive_serial_is_txfifo_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c_sifive_serial_is_txfifo_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { i32 }

@SIFIVE_SERIAL_TXDATA_OFFS = common dso_local global i32 0, align 4
@SIFIVE_SERIAL_TXDATA_FULL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sifive_serial_port*)* @sifive_serial_is_txfifo_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_serial_is_txfifo_full(%struct.sifive_serial_port* %0) #0 {
  %2 = alloca %struct.sifive_serial_port*, align 8
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %2, align 8
  %3 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %4 = load i32, i32* @SIFIVE_SERIAL_TXDATA_OFFS, align 4
  %5 = call i32 @__ssp_readl(%struct.sifive_serial_port* %3, i32 %4)
  %6 = load i32, i32* @SIFIVE_SERIAL_TXDATA_FULL_MASK, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

declare dso_local i32 @__ssp_readl(%struct.sifive_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
