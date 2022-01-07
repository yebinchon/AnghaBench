; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2529_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2529_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@MAC_CSR13 = common dso_local global i32 0, align 4
@MAC_CSR13_DIR4 = common dso_local global i32 0, align 4
@MAC_CSR13_VAL4 = common dso_local global i32 0, align 4
@MAC_CSR13_DIR3 = common dso_local global i32 0, align 4
@MAC_CSR13_VAL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i32)* @rt61pci_config_antenna_2529_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_antenna_2529_rx(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = load i32, i32* @MAC_CSR13, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @MAC_CSR13_DIR4, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %7, i32 %11, i32 0)
  %13 = load i32, i32* @MAC_CSR13_VAL4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @rt2x00_set_field32(i32* %7, i32 %13, i32 %14)
  %16 = load i32, i32* @MAC_CSR13_DIR3, align 4
  %17 = call i32 @rt2x00_set_field32(i32* %7, i32 %16, i32 0)
  %18 = load i32, i32* @MAC_CSR13_VAL3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @rt2x00_set_field32(i32* %7, i32 %18, i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %25 = load i32, i32* @MAC_CSR13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
