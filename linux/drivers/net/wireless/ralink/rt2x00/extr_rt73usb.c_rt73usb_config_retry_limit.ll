; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_retry_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_retry_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TXRX_CSR4 = common dso_local global i32 0, align 4
@TXRX_CSR4_OFDM_TX_RATE_DOWN = common dso_local global i32 0, align 4
@TXRX_CSR4_OFDM_TX_RATE_STEP = common dso_local global i32 0, align 4
@TXRX_CSR4_OFDM_TX_FALLBACK_CCK = common dso_local global i32 0, align 4
@TXRX_CSR4_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@TXRX_CSR4_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt73usb_config_retry_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_config_retry_limit(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @TXRX_CSR4, align 4
  %8 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @TXRX_CSR4_OFDM_TX_RATE_DOWN, align 4
  %10 = call i32 @rt2x00_set_field32(i32* %5, i32 %9, i32 1)
  %11 = load i32, i32* @TXRX_CSR4_OFDM_TX_RATE_STEP, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %5, i32 %11, i32 0)
  %13 = load i32, i32* @TXRX_CSR4_OFDM_TX_FALLBACK_CCK, align 4
  %14 = call i32 @rt2x00_set_field32(i32* %5, i32 %13, i32 0)
  %15 = load i32, i32* @TXRX_CSR4_LONG_RETRY_LIMIT, align 4
  %16 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %5, i32 %15, i32 %20)
  %22 = load i32, i32* @TXRX_CSR4_SHORT_RETRY_LIMIT, align 4
  %23 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %24 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rt2x00_set_field32(i32* %5, i32 %22, i32 %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @TXRX_CSR4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
