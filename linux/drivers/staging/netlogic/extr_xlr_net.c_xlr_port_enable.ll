; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@R_RX_CONTROL = common dso_local global i32 0, align 4
@O_RX_CONTROL__RGMII = common dso_local global i32 0, align 4
@R_MAC_CONFIG_1 = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__rxen = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__txen = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__rxfc = common dso_local global i32 0, align 4
@O_MAC_CONFIG_1__txfc = common dso_local global i32 0, align 4
@R_TX_CONTROL = common dso_local global i32 0, align 4
@O_TX_CONTROL__TXENABLE = common dso_local global i32 0, align 4
@O_TX_CONTROL__TXTHRESHOLD = common dso_local global i32 0, align 4
@O_RX_CONTROL__RXENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_port_enable(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %4 = call i32 (...) @read_c0_prid()
  %5 = and i32 %4, 61440
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 16384
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 49152
  br i1 %13, label %14, label %32

14:                                               ; preds = %11, %8, %1
  %15 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %16 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %24 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @R_RX_CONTROL, align 4
  %27 = load i32, i32* @O_RX_CONTROL__RGMII, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @O_RX_CONTROL__RGMII, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @xlr_reg_update(i32 %25, i32 %26, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %22, %14, %11
  %33 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %34 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @R_MAC_CONFIG_1, align 4
  %37 = load i32, i32* @O_MAC_CONFIG_1__rxen, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @O_MAC_CONFIG_1__txen, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @O_MAC_CONFIG_1__rxfc, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @O_MAC_CONFIG_1__txfc, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @O_MAC_CONFIG_1__rxen, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @O_MAC_CONFIG_1__txen, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @O_MAC_CONFIG_1__rxfc, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @O_MAC_CONFIG_1__txfc, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = call i32 @xlr_reg_update(i32 %35, i32 %36, i32 %47, i32 %58)
  %60 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %61 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @R_TX_CONTROL, align 4
  %64 = load i32, i32* @O_TX_CONTROL__TXENABLE, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* @O_TX_CONTROL__TXTHRESHOLD, align 4
  %67 = shl i32 512, %66
  %68 = or i32 %65, %67
  %69 = call i32 @xlr_reg_update(i32 %62, i32 %63, i32 %68, i32 16383)
  %70 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %71 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @R_RX_CONTROL, align 4
  %74 = load i32, i32* @O_RX_CONTROL__RXENABLE, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* @O_RX_CONTROL__RXENABLE, align 4
  %77 = shl i32 1, %76
  %78 = call i32 @xlr_reg_update(i32 %72, i32 %73, i32 %75, i32 %77)
  ret void
}

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i32 @xlr_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
