; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_hw_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_hw_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.xlr_net_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@R_MAC_ADDR0 = common dso_local global i64 0, align 8
@R_MAC_ADDR_MASK2 = common dso_local global i64 0, align 8
@R_MAC_ADDR_MASK3 = common dso_local global i64 0, align 8
@R_MAC_FILTER_CONFIG = common dso_local global i64 0, align 8
@O_MAC_FILTER_CONFIG__BROADCAST_EN = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__ALL_MCAST_EN = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@R_IPG_IFG = common dso_local global i32 0, align 4
@MAC_B2B_IPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xlr_hw_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_hw_set_mac_addr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xlr_net_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.xlr_net_priv* %5, %struct.xlr_net_priv** %3, align 8
  %6 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %7 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* @R_MAC_ADDR0, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 24
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %15, %21
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %22, %28
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %29, %34
  %36 = call i32 @xlr_nae_wreg(i32 %8, i64 %9, i32 %35)
  %37 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %38 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @R_MAC_ADDR0, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 24
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %47, %53
  %55 = call i32 @xlr_nae_wreg(i32 %39, i64 %41, i32 %54)
  %56 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %57 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @R_MAC_ADDR_MASK2, align 8
  %60 = call i32 @xlr_nae_wreg(i32 %58, i64 %59, i32 -1)
  %61 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %62 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* @R_MAC_ADDR_MASK2, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @xlr_nae_wreg(i32 %63, i64 %65, i32 -1)
  %67 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %68 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @R_MAC_ADDR_MASK3, align 8
  %71 = call i32 @xlr_nae_wreg(i32 %69, i64 %70, i32 -1)
  %72 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %73 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @R_MAC_ADDR_MASK3, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @xlr_nae_wreg(i32 %74, i64 %76, i32 -1)
  %78 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %79 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* @R_MAC_FILTER_CONFIG, align 8
  %82 = load i32, i32* @O_MAC_FILTER_CONFIG__BROADCAST_EN, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* @O_MAC_FILTER_CONFIG__ALL_MCAST_EN, align 4
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  %87 = load i32, i32* @O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID, align 4
  %88 = shl i32 1, %87
  %89 = or i32 %86, %88
  %90 = call i32 @xlr_nae_wreg(i32 %80, i64 %81, i32 %89)
  %91 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %92 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %1
  %99 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %100 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %98, %1
  %107 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %108 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @R_IPG_IFG, align 4
  %111 = load i32, i32* @MAC_B2B_IPG, align 4
  %112 = call i32 @xlr_reg_update(i32 %109, i32 %110, i32 %111, i32 127)
  br label %113

113:                                              ; preds = %106, %98
  ret void
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xlr_nae_wreg(i32, i64, i32) #1

declare dso_local i32 @xlr_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
