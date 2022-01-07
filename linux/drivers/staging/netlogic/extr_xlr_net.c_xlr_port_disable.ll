; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32 }

@R_MAC_CONFIG_1 = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__rxen = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__txen = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__rxfc = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__txfc = common dso_local global i32 0, align 4
@R_TX_CONTROL = common dso_local global i32 0, align 4
@O_TX_CONTROL__TXENABLE = common dso_local global i32 0, align 4
@O_TX_CONTROL__TXTHRESHOLD = common dso_local global i32 0, align 4
@R_RX_CONTROL = common dso_local global i32 0, align 4
@O_RX_CONTROL__RXENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_port_disable(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %3 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %4 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @R_MAC_CONFIG_1, align 4
  %7 = load i32, i32* @O_MAC_CONFIG_1__rxen, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @O_MAC_CONFIG_1__txen, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, i32* @O_MAC_CONFIG_1__rxfc, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @O_MAC_CONFIG_1__txfc, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = call i32 @xlr_reg_update(i32 %5, i32 %6, i32 %17, i32 0)
  %19 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %20 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @R_TX_CONTROL, align 4
  %23 = load i32, i32* @O_TX_CONTROL__TXENABLE, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @O_TX_CONTROL__TXTHRESHOLD, align 4
  %26 = shl i32 512, %25
  %27 = or i32 %24, %26
  %28 = call i32 @xlr_reg_update(i32 %21, i32 %22, i32 %27, i32 0)
  %29 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %30 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @R_RX_CONTROL, align 4
  %33 = load i32, i32* @O_RX_CONTROL__RXENABLE, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @xlr_reg_update(i32 %31, i32 %32, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @xlr_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
