; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@TXRX_CSR0 = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_CRC = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_PHYSICAL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_CONTROL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@CONFIG_MONITORING = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_TO_DS = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_VERSION_ERROR = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_MULTICAST = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_BROADCAST = common dso_local global i32 0, align 4
@TXRX_CSR0_DROP_ACK_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt61pci_config_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_filter(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @TXRX_CSR0, align 4
  %8 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @TXRX_CSR0_DROP_CRC, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FIF_FCSFAIL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rt2x00_set_field32(i32* %5, i32 %9, i32 %15)
  %17 = load i32, i32* @TXRX_CSR0_DROP_PHYSICAL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIF_PLCPFAIL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %5, i32 %17, i32 %23)
  %25 = load i32, i32* @TXRX_CSR0_DROP_CONTROL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FIF_CONTROL, align 4
  %28 = load i32, i32* @FIF_PSPOLL, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %33)
  %35 = load i32, i32* @TXRX_CSR0_DROP_NOT_TO_ME, align 4
  %36 = load i32, i32* @CONFIG_MONITORING, align 4
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @rt2x00_set_field32(i32* %5, i32 %35, i32 %42)
  %44 = load i32, i32* @TXRX_CSR0_DROP_TO_DS, align 4
  %45 = load i32, i32* @CONFIG_MONITORING, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 1
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %2
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %2
  %57 = phi i1 [ false, %2 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @rt2x00_set_field32(i32* %5, i32 %44, i32 %58)
  %60 = load i32, i32* @TXRX_CSR0_DROP_VERSION_ERROR, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %5, i32 %60, i32 1)
  %62 = load i32, i32* @TXRX_CSR0_DROP_MULTICAST, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FIF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @rt2x00_set_field32(i32* %5, i32 %62, i32 %68)
  %70 = load i32, i32* @TXRX_CSR0_DROP_BROADCAST, align 4
  %71 = call i32 @rt2x00_set_field32(i32* %5, i32 %70, i32 0)
  %72 = load i32, i32* @TXRX_CSR0_DROP_ACK_CTS, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @FIF_CONTROL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @rt2x00_set_field32(i32* %5, i32 %72, i32 %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @TXRX_CSR0, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %80, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
